---
name: growth-curve
description: Adds the Growth Curve effect (the room fades to grey, a blue line chart draws behind the cut-out speaker, and a counter climbs from 1x to 10x) to the user's vertical talking-head video and renders it. Run as /growth-curve [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /growth-curve: Growth Curve

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `growth-curve` |
| Length | 72 frames (2.4 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/GrowthCurve.tsx` |

**What it does:** The room fades to grey, a blue line chart draws behind the cut-out speaker, and a counter climbs from 1x to 10x.

**Works best on:** growth, results, numbers going up.

**Default placement:** on the word that names the growth or result; otherwise 3 s in.

**On-screen text:** In GrowthCurve.tsx: the axis caption, the counter unit and the pill text. If the user gives a real figure, change the counter's end value to match it.

**Notes:** Let it run its full 72 frames, because the chart builds to its end.
