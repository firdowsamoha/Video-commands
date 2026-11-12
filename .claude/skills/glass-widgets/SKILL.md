---
name: glass-widgets
description: Adds the Glass Widgets effect (five frosted dashboard widgets rise around the head: a stat counter, a profile, a bar chart, a progress ring and a render bar) to the user's vertical talking-head video and renders it. Run as /glass-widgets [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /glass-widgets: Glass Widgets

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `glass-widgets` |
| Length | 90 frames (3.0 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/GlassWidgets.tsx` |

**What it does:** Five frosted dashboard widgets rise around the head: a stat counter, a profile, a bar chart, a progress ring and a render bar. Counts run up, bars grow, the ring fills to 100% and the bar turns green.

**Works best on:** DATA ANALYSIS content (the user's favourite): stats, metrics, results, "the numbers show", progress updates.

**Default placement:** on the first number or stat that is mentioned; otherwise 3 s in.

**On-screen text:** In GlassWidgets.tsx: everything in `COPY` (the count, profile, chart, ring and render labels and numbers). Fill these with the real figures and metric names the speaker talks about.

**Notes:** The widgets are placed for a centred speaker and do not follow `face`. If one covers the face, move that `Widget`'s `x` and `y`.
