---
name: checklist-pop
description: Adds the Checklist Pop effect (four glass pills appear beside the speaker and tick green, 12 frames apart) to the user's vertical talking-head video and renders it. Run as /checklist-pop [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /checklist-pop: Checklist Pop

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `checklist-pop` |
| Length | 72 frames (2.4 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/ChecklistPop.tsx` |

**What it does:** Four glass pills appear beside the speaker and tick green, 12 frames apart.

**Works best on:** listing three or four things.

**Default placement:** where the speaker starts listing; otherwise 3 s in.

**On-screen text:** In ChecklistPop.tsx: `ITEMS`, exactly four short words.

**Notes:** The pills sit for a speaker centred or left of centre. For a speaker on the right, change `LEFT` in ChecklistPop.tsx.
