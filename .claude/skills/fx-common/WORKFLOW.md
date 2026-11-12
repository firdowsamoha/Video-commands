# Shared workflow for the single-effect commands

Every effect command (`/orbit`, `/split`, ...) follows these steps. The command's own SKILL.md gives the effect id, its length, where it works best and which strings to rewrite. `PROJ` = `~/.claude/skills/video-effects` (the effects project, cloned there on first use). `COMMON` = the folder this file is in: `.claude/skills/fx-common` inside a repository, or `~/.claude/skills/fx-common` for a personal install.

Frames are the unit everywhere: frame = seconds × 30.

## 0. Make sure the project is ready

- If `PROJ/package.json` is missing: `git clone https://github.com/JesseEisenbart/video-effects-skill.git ~/.claude/skills/video-effects`.
- If `PROJ/node_modules` is missing, run `npm ci` in PROJ. Make sure `python3 -c "import numpy, PIL"` works (otherwise run `pip install numpy pillow`), and that `ffmpeg` is on PATH.
- On Linux, Remotion should use the preinstalled Chromium if there is one. If `/opt/pw-browsers/chromium` exists, add `--browser-executable=/opt/pw-browsers/chromium` to every `npx remotion` command. On macOS or Windows, leave it out.

## 1. The video

Read the arguments the user typed after the command. They can include a video path, a time or the words where the effect should land, and the on-screen text or topic.

- No path given: use the most recent video the user attached in this conversation. If there isn't one, ask for the video.
- Pick a short take name from the file name (lowercase, no spaces).

## 2. Prepare the take (once per video)

If `PROJ/public/takes/<name>/source.json` already exists and was made from the same file, reuse it. Otherwise run:

```sh
COMMON/scripts/prepare-take.sh <video> <name>              # cut-out effects
COMMON/scripts/prepare-take.sh <video> <name> --no-matte   # effects marked "Cut-out: no"
```

A minute of footage takes about 10 minutes on a 4-core CPU with the cut-out, and well under a minute without it. If a later command needs a cut-out and the take was made with `--no-matte`, run it again without the flag.

Then fix the face position. Open `PROJ/public/takes/<name>/still-half.png`; it is half size, so double every pixel value you read. Write the result into `source.json` as `face`:
- `x`: the horizontal centre of the face
- `y`: the top of the face, at the hairline or the edge of a head covering
- `mouthY`: the line of the lips

On macOS this value comes from Vision and only needs a check.

For cut-out effects, also check one cut-out: composite `fg/0060.webp` over a flat green background and look at it. If you see holes or the room showing through, tell the user and continue.

## 3. Where the effect lands

- The user gave a time: convert it to frames.
- The user gave words: ask for the time, or find it from a word-level transcript if one exists (for example `whisper take.mp4 --word_timestamps True`, if whisper is installed).
- Nothing given: use the "Default placement" in the command's SKILL.md.

Start the effect 1 or 2 frames before the cue word. Clamp it so that `start + frames` stays within `source.frames`.

## 4. On-screen text

Rewrite only the string literals listed in the command's SKILL.md. Keep the item counts the same, and keep each string short enough to fit its box. Write the text in the language the user asks for. If the user gave no text, write it from what is said in the clip, or from the topic the user gave.

Before you edit a file, note that PROJ is a git checkout. Run `git -C PROJ diff --stat` first. If an earlier command left its own text in the file, overwrite it. `git -C PROJ checkout -- src/fx/<File>.tsx` restores the original demo text.

## 5. Write the edit

Write `PROJ/src/edit/edit.json`. Set `source` to the contents of `public/takes/<name>/source.json`, with `continuous: true`. Use these segments, which play back to back so the voice stays in sync:

```json
[
  { "kind": "aroll", "at": 0, "frames": START },
  { "kind": "fx", "id": "<effect id>", "at": START, "frames": FX },
  { "kind": "aroll", "at": START + FX, "frames": source.frames - START - FX }
]
```

- Leave out any segment whose `frames` would be 0.
- `FX` is the effect's full length, or less if the take ends sooner.
- Each segment's `at` must equal the previous segment's `at + frames`.

If the user lists several effects in one message (for example "/split at 3s, then orbit at 12s"), put them all in one edit with plain aroll between them. Don't place them back to back. The one exception is Green Screen followed by Frame Break, which is designed to run as a chain.

## 6. Check stills, then render

Render three stills inside the effect: near its start, its middle and its peak. Use frames on the edit timeline, then look at each one.

```sh
cd PROJ && npx remotion still ExampleEdit out/check-<n>.jpg --frame=<n> --scale=0.5 [--browser-executable=...]
```

Check each still for these problems:
- The face sits where the effect expects it.
- Nothing covers the mouth.
- The text fits its box.
- The cut-out edge is clean.

Fix any problem and render the stills again. Then render the full video:

```sh
cd PROJ && npx remotion render ExampleEdit out/<name>-<effect>.mp4 --codec=h264 --crf=18 --pixel-format=yuv420p --audio-codec=aac [--browser-executable=...]
```

Copy the result to a folder the user can open (in a cloud session, the working directory), then send it. In one or two lines, tell the user where the effect lands and what text it shows.
