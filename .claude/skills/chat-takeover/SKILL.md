---
name: chat-takeover
description: Adds the Chat Takeover effect (the take shrinks into an attachment in a chat window) to the user's vertical talking-head video and renders it. Run as /chat-takeover [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /chat-takeover: Chat Takeover

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `chat-takeover` |
| Length | 90 frames (3.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/ChatTakeover.tsx` |

**What it does:** The take shrinks into an attachment in a chat window. A prompt and a reply appear, and three steps tick off.

**Works best on:** "I just asked it to...", describing a request or a process you ran with an AI tool.

**Default placement:** where the speaker starts describing the request; otherwise 2 s in.

**On-screen text:** In ChatTakeover.tsx: the header title, the prompt bubble, the reply line, `STEPS` (three short lines) and the attachment caption.
