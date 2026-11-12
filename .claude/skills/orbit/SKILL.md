---
name: orbit
description: Adds the Orbit effect (a ring of app tiles circles the speaker's head, passing behind and in front of it) to the user's vertical talking-head video and renders it. Run as /orbit [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /orbit: Orbit

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `orbit` |
| Length | 75 frames (2.5 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/Orbit.tsx` |

**What it does:** A ring of app tiles circles the speaker's head, passing behind and in front of it.

**Works best on:** "all the tools", "everything at once", listing many apps or tools.

**Default placement:** on the first line that mentions several tools; otherwise 2 s in.

**On-screen text:** No text. The tiles are icons (`GLYPHS` in Orbit.tsx). Leave them as they are unless the user asks for different icons.

**Notes:** Uses `face`. If the ring sits too high or too low, fix `face.y`.
