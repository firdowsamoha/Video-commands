---
name: liquid-glass
description: Adds the Liquid Glass effect (a glass drop glides in, magnifies the face, then leaves the way it came) to the user's vertical talking-head video and renders it. Run as /liquid-glass [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /liquid-glass: Liquid Glass

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `liquid-glass` |
| Length | 72 frames (2.4 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/LiquidGlass.tsx` |

**What it does:** A glass drop glides in, magnifies the face, then leaves the way it came.

**Works best on:** "look closely", "the detail is", a secret.

**Default placement:** on the "look" line; otherwise 3 s in.

**On-screen text:** No text.

**Notes:** Uses `face`. If the drop misses the face, fix `face.x` and `face.y`.
