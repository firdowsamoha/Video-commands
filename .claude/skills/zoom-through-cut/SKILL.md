---
name: zoom-through-cut
description: Adds the Zoom Through Cut effect (a zoom-blur punch-in, a cut on the blur peak, then a clean zoom back out) to the user's vertical talking-head video and renders it. Run as /zoom-through-cut [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /zoom-through-cut: Zoom Through Cut

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `zoom-through-cut` |
| Length | 60 frames (2.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/ZoomThroughCut.tsx` |

**What it does:** A zoom-blur punch-in, a cut on the blur peak, then a clean zoom back out.

**Works best on:** "fast forward", "later", a jump in time or topic.

**Default placement:** at the topic change; otherwise 3 s in.

**On-screen text:** No text.

**Notes:** With `continuous: true` the cut stays on the same moment so the voice stays in sync; with `false` it jumps 12 s ahead in the take.
