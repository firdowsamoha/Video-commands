---
name: zoom-portal
description: Adds the Zoom Portal effect (a round inset of the speaker pops up, then the camera flies through it into a punch-in) to the user's vertical talking-head video and renders it. Run as /zoom-portal [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /zoom-portal: Zoom Portal

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `zoom-portal` |
| Length | 66 frames (2.2 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/ZoomPortal.tsx` |

**What it does:** A round inset of the speaker pops up, then the camera flies through it into a punch-in.

**Works best on:** "let me show you", a transition into a new point.

**Default placement:** at the start of a new point; otherwise 3 s in.

**On-screen text:** No text.

**Notes:** Uses `face`. The ring floats upper left (`C0` in ZoomPortal.tsx). If the speaker is on the left, move it right.
