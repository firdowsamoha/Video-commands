# video-commands

21 slash commands for [Claude Code](https://claude.com/claude-code) that add a motion-graphics effect to your vertical (9:16) talking-head video and render it. Type a command, get an effect:

```
/glass-widgets
/split at 0:08, TikTok 120k, Instagram 85k, YouTube 40k, Facebook 22k, X 9k
/frame-break
```

## Install

Copy the commands into your Claude Code skills folder:

```bash
git clone https://github.com/firdowsamoha/video-commands.git
```

```bash
cp -r video-commands/.claude/skills/* ~/.claude/skills/
```

Then open Claude Code, attach a vertical video, and type a command. The first time a command runs, it downloads the effects project and installs what it needs, which takes a few minutes.

**You need:** [Claude Code](https://claude.com/claude-code), Node.js, Python 3 (with numpy and pillow) and ffmpeg. On a Mac, the person cut-out uses Apple Vision; on Linux and Windows, it uses a free segmentation model that is downloaded on first use.

**Cloud sessions:** start a Claude Code session on the web with this repository selected, and the commands are already there.

## The 21 commands

| Command | What it does | Best for |
|--|--|--|
| `/orbit` | App tiles circle your head, passing behind and in front | "all the tools" |
| `/chat-takeover` | Your clip shrinks into a chat window; steps tick off | "I just asked it to…" |
| `/frame-escape` | You become a tilted photo and break out over its edge | a reveal |
| `/snap-zoom` | Slow creep, then a hard punch-in on your face | a punchline |
| `/checklist-pop` | Four glass pills tick green beside you | listing 3–4 things |
| `/headline-storm` | Seven breaking-news banners pile up around you | hype, news |
| `/zoom-portal` | A round inset pops up; the camera flies through it | a new point |
| `/growth-curve` | A line chart draws behind you while a counter climbs | growth, results |
| `/broll-overlay` | Your clip drops into an editor; a B-roll clip cuts in | editing, workflows |
| `/paper-cutout` | You become a sticker on a paper poster | playful moments |
| `/magazine-cover` | A masthead, cover lines and a badge land around you | a big claim |
| `/liquid-glass` | A glass drop glides in and magnifies your face | "look closely" |
| `/zoom-through-cut` | Zoom-blur punch-in, cut on the blur, zoom back out | a jump in time |
| `/green-screen` | A green backdrop wipes in behind you, then a new set | "behind the scenes" |
| `/frame-break` | The scene cracks and shatters around you | **the hook** |
| `/digital-zoom` | Camera viewfinder; zooms 1x → 1.8x → 3x on your face | emphasis |
| `/phone-mockup` | Your clip on a phone screen with a short-video UI | "on your feed" |
| `/checklist-tally` | Closing card: a counter climbs while a list ticks off | the outro |
| `/glass-widgets` | Frosted stats widgets rise around your head | **data and stats** |
| `/checklist` | A card with five steps going pending → done | a process, 5 tips |
| `/split` | A bar chart slides into the top half, you below | comparing numbers |

After the command, you can add a time (`at 0:05`) and the text you want on screen. Several in one message (`/frame-break, then /split at 0:10`) give you one video with all of them.

## How it works

Each command's settings are in `.claude/skills/<command>/SKILL.md`, and the shared steps are in `.claude/skills/fx-common/WORKFLOW.md`: prepare the video (cut-out masks, face position), place the effect, rewrite its on-screen text, check still frames, render.

## Credits

The effects come from [video-effects-skill](https://github.com/JesseEisenbart/video-effects-skill) by Jesse Eisenbart (MIT License), built with [Remotion](https://www.remotion.dev). These commands wrap each effect as its own slash command.

Remotion is free for individuals and small teams; larger companies need a company license (see [remotion.dev/license](https://www.remotion.dev/license)).
