# video-commands

Slash commands for Claude Code that add one motion-graphics effect to a vertical (9:16) talking-head video and render it. They use the effects from [video-effects-skill](https://github.com/JesseEisenbart/video-effects-skill), which is cloned to `~/.claude/skills/video-effects` the first time a command runs.

## Commands

| Command | Best for |
|--|--|
| `/frame-break` | the hook: opens the video by shattering a grey scene to reveal you |
| `/glass-widgets` | data analysis: stats, metrics, results |
| `/split` | comparing numbers: a bar chart above, you below |
| `/growth-curve` | growth and results |
| `/checklist` | five steps or tips |
| `/chat-takeover` | describing a request you made to an AI tool |
| `/broll-overlay` | talking about editing or a workflow |
| `/phone-mockup` | social media, "on your feed" |
| `/magazine-cover` | a big claim or an introduction |
| `/paper-cutout` | playful moments, a change of tone |
| `/orbit` | "all the tools", many apps at once |
| `/zoom-portal` | moving to a new point |
| `/digital-zoom` | emphasis, "look at this" |

## Usage

Attach a video, then type a command, optionally followed by a time and the text you want on screen:

```
/split at 0:08, compare views: TikTok 120k, Instagram 85k, YouTube 40k, Facebook 22k, X 9k
/glass-widgets at 0:05, sales up 34%, 1,200 customers
/frame-break
```

Ask for several in one message ("/frame-break, then /split at 0:10") to get one video with all of them.

## Install

- **Cloud sessions:** start a session with this repository selected. The commands are in `.claude/skills/`.
- **On your computer:** copy them into your personal skills folder:

```bash
cp -r .claude/skills/* ~/.claude/skills/
```

Needs Node.js, Python 3 (numpy and pillow) and ffmpeg. On Linux and Windows, the person cut-out uses the u2net human segmentation model, which is downloaded on first use. On macOS, it uses Apple Vision.

The shared workflow is in `.claude/skills/fx-common/WORKFLOW.md`, and each command's settings are in its own `SKILL.md`.
