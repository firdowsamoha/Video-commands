---
name: phone-mockup
description: Adds the Phone Mockup effect (the take shrinks into a phone screen with a short-video ui, and the phone settles into a tilt) to the user's vertical talking-head video and renders it. Run as /phone-mockup [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /phone-mockup: Phone Mockup

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `phone-mockup` |
| Length | 72 frames (2.4 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/PhoneMockup.tsx` |

**What it does:** The take shrinks into a phone screen with a short-video UI, and the phone settles into a tilt.

**Works best on:** "on your feed", "when you post this", social media.

**Default placement:** where posting or social media is mentioned; otherwise 3 s in.

**On-screen text:** In PhoneMockup.tsx (`ScreenUi`): the handle (use the user's own handle if they give it), the caption, and the like and comment counts.
