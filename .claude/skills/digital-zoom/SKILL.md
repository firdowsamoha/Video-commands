---
name: digital-zoom
description: Adds the Digital Zoom effect (a camera viewfinder overlay appears, the shot steps from 1x to 1) to the user's vertical talking-head video and renders it. Run as /digital-zoom [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /digital-zoom: Digital Zoom

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `digital-zoom` |
| Length | 66 frames (2.2 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/DigitalZoom.tsx` |

**What it does:** A camera viewfinder overlay appears, the shot steps from 1x to 1.8x to 3x on the face, then snaps back.

**Works best on:** "zoom in on this", "look at this", scrutiny, emphasis.

**Default placement:** on the emphasised word; otherwise 3 s in.

**On-screen text:** No text (the REC and ISO labels in the viewfinder stay as they are).

**Notes:** Uses `face`. If the 3x step misses the face, fix `face.x` and `face.y`.
