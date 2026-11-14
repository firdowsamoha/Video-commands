---
name: green-screen
description: Adds the Green Screen effect (a green backdrop wipes down behind the speaker, then a grey scene rises in and holds still) to the user's vertical talking-head video and renders it. Run as /green-screen [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /green-screen: Green Screen

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `green-screen` |
| Length | 72 frames (2.4 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/GreenScreen.tsx` |

**What it does:** A green backdrop wipes down behind the speaker, then a grey scene rises in and holds still.

**Works best on:** "behind the scenes", "let's change the set".

**Default placement:** on the scene-change line; otherwise 3 s in.

**On-screen text:** No text.

**Notes:** It ends on the grey scene that `/frame-break` opens on, so `/green-screen` followed straight by `/frame-break` is a designed chain.
