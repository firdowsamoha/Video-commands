---
name: magazine-cover
description: Adds the Magazine Cover effect (the room fades to paper, and a masthead, cover lines, a barcode and a badge land around the speaker like a magazine cover) to the user's vertical talking-head video and renders it. Run as /magazine-cover [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /magazine-cover: Magazine Cover

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `magazine-cover` |
| Length | 75 frames (2.5 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/MagazineCover.tsx` |

**What it does:** The room fades to paper, and a masthead, cover lines, a barcode and a badge land around the speaker like a magazine cover.

**Works best on:** "featured", credibility, a big claim, introducing yourself or your brand.

**Default placement:** on the big claim or introduction; otherwise 2 s in.

**On-screen text:** In MagazineCover.tsx: `MAST` (one short word in capitals; 5 to 6 letters fit best), the issue strip, the cover lines, the bottom headline and the badge.

**Notes:** Let it run its full 75 frames, because it builds to the full cover.
