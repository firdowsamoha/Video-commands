---
name: checklist
description: Adds the Checklist effect (a dark card rises over the chest) to the user's vertical talking-head video and renders it. Run as /checklist [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /checklist: Checklist

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `checklist` |
| Length | 90 frames (3.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/Checklist.tsx` |

**What it does:** A dark card rises over the chest. Five rows go from pending to working to done, an "N of 5" counter runs, and a sparkle settles on the last tick.

**Works best on:** listing five steps, "here's what I did", a process or tips.

**Default placement:** where the speaker starts listing; otherwise 3 s in.

**On-screen text:** In Checklist.tsx: `TITLE` and `ROWS`, five rows, each a short label plus a short mono tag. Keep exactly five rows.

**Notes:** The card covers the chest and lower half from y = 1100. If the user's mouth is below that, lower `face` or move `CARD.y`.
