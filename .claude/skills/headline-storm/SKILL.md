---
name: headline-storm
description: Adds the Headline Storm effect (seven headline banners slam in from both sides and pile up around the speaker) to the user's vertical talking-head video and renders it. Run as /headline-storm [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /headline-storm: Headline Storm

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `headline-storm` |
| Length | 75 frames (2.5 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/HeadlineStorm.tsx` |

**What it does:** Seven headline banners slam in from both sides and pile up around the speaker.

**Works best on:** hype, "everyone's talking about", news.

**Default placement:** on the hype line; otherwise 2 s in.

**On-screen text:** In HeadlineStorm.tsx: `BANNERS`, seven items, each a tag plus a short headline. Keep exactly seven.

**Notes:** Let it run its full 75 frames, because the banners keep landing until the end.
