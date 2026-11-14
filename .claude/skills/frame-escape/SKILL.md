---
name: frame-escape
description: Adds the Frame Escape effect (the take becomes a tilted print, and the speaker's head breaks out over its top edge) to the user's vertical talking-head video and renders it. Run as /frame-escape [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /frame-escape: Frame Escape

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `frame-escape` |
| Length | 75 frames (2.5 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/FrameEscape.tsx` |

**What it does:** The take becomes a tilted print, and the speaker's head breaks out over its top edge.

**Works best on:** "out of the box", "step outside", a reveal.

**Default placement:** on the reveal line; otherwise 2 s in.

**On-screen text:** No text.

**Notes:** Uses `face`. If the head does not clear the print's top edge, fix `face.y`.
