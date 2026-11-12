---
name: frame-break
description: Adds the Frame Break effect (the speaker stands on a clean grey scene that cracks and shatters) to the user's vertical talking-head video and renders it. Run as /frame-break [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /frame-break: Frame Break

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `frame-break` |
| Length | 66 frames (2.2 s) |
| Cut-out | yes: prepare the take without `--no-matte` |
| Source file | `src/fx/FrameBreak.tsx` |

**What it does:** The speaker stands on a clean grey scene that cracks and shatters. The shards fall away to reveal the real room underneath.

**Works best on:** THE HOOK: the first second of the video. Also "break through", "that's a myth", a reveal.

**Default placement:** frame 0, as the opening hook. The user chose this as their favourite hook, so use frame 0 unless they give another time.

**On-screen text:** No text.

**Notes:** The crack starts at frame 5 and the shatter at frame 14, so the room is revealed about half a second in. The crack centre is `C` in FrameBreak.tsx (770, 560). If the face sits there, move `C` off the face so the crack doesn't start on it.
