---
name: paper-cutout
description: Adds the Paper Cutout effect (the speaker becomes a white-bordered sticker on a blue-and-ink paper poster with swaying shapes) to the user's vertical talking-head video and renders it. Run as /paper-cutout [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /paper-cutout: Paper Cutout

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `paper-cutout` |
| Length | 75 frames (2.5 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/PaperCutout.tsx` |

**What it does:** The speaker becomes a white-bordered sticker on a blue-and-ink paper poster with swaying shapes.

**Works best on:** playful beats, "cut it out", a change of tone.

**Default placement:** on a light or funny line; otherwise 3 s in.

**On-screen text:** No text. Colours are `PAPER`, `BLUE` and `INKY` in PaperCutout.tsx, if the user wants their own brand colours.

**Notes:** Needs the sticker mattes, which the full prepare step makes.
