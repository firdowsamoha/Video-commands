---
name: checklist-tally
description: Adds the Checklist Tally effect (a closing card: a counter climbs while a list of 21 items ticks off) to the user's vertical talking-head video and renders it. Run as /checklist-tally [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /checklist-tally: Checklist Tally

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `checklist-tally` |
| Length | 120 frames (4.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/ChecklistTally.tsx` |

**What it does:** A closing card: a counter climbs while a list of 21 items ticks off. It plays no footage.

**Works best on:** the outro, a summary.

**Default placement:** the end of the video, as the closing card.

**On-screen text:** In ChecklistTally.tsx: `EFFECT_NAMES` (the list) and the line under the counter.

**Notes:** Plays no footage, so use it last or not at all. Let it run its full 120 frames.
