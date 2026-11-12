---
name: split
description: Adds the Split effect (the frame splits: a paper chart panel slides into the top half and the shot drops below it) to the user's vertical talking-head video and renders it. Run as /split [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /split: Split

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `split` |
| Length | 90 frames (3.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/Split.tsx` |

**What it does:** The frame splits: a paper chart panel slides into the top half and the shot drops below it. Bars grow with their values, and a dashed average line draws across.

**Works best on:** comparing numbers, "on average", "versus", data comparisons.

**Default placement:** on the comparison line; otherwise 3 s in.

**On-screen text:** In Split.tsx: `TITLE`, `ACCENT` (a handwritten line, set in Caveat), `BARS` (five items, each a label plus a value), `VALUE_SUFFIX` (for example '%' or 'k') and `AVG_LABEL`. Use the real numbers the user gives.

**Notes:** Uses only `face.y`, to drop the shot below the seam. If the seam cuts through the head, fix `face.y`.
