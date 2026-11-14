---
name: snap-zoom
description: Adds the Snap Zoom effect (a slow creep, then a hard punch-in on the face at frame 12) to the user's vertical talking-head video and renders it. Run as /snap-zoom [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /snap-zoom: Snap Zoom

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `snap-zoom` |
| Length | 60 frames (2.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/SnapZoom.tsx` |

**What it does:** A slow creep, then a hard punch-in on the face at frame 12.

**Works best on:** a punchline, "this one thing", emphasis on a word.

**Default placement:** 1 to 2 frames before the punchline word; otherwise 3 s in.

**On-screen text:** No text.

**Notes:** Uses `face`. If the punch-in misses the face, fix `face.x` and `face.y`.
