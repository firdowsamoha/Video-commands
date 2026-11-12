---
name: broll-overlay
description: Adds the B-roll Overlay effect (the take shrinks into a video-editor window, a clip drops onto track v2, and an overlay cuts in under the playhead) to the user's vertical talking-head video and renders it. Run as /broll-overlay [video] [time or cue] [on-screen text or topic].
argument-hint: "[video path] [time, e.g. 0:05] [text or topic]"
disable-model-invocation: true
---

# /broll-overlay: B-roll Overlay

Arguments typed by the user: $ARGUMENTS

Follow `../fx-common/WORKFLOW.md` (the `fx-common` folder next to this skill's folder) step by step, using these values.

| | |
|--|--|
| Effect id | `broll-overlay` |
| Length | 90 frames (3.0 s) |
| Cut-out | no: prepare with `--no-matte` if no cut-out exists yet |
| Source file | `src/fx/BrollOverlay.tsx` |

**What it does:** The take shrinks into a video-editor window, a clip drops onto track V2, and an overlay cuts in under the playhead.

**Works best on:** talking about editing, B-roll or a workflow.

**Default placement:** where editing or the workflow is mentioned; otherwise 3 s in.

**On-screen text:** In BrollOverlay.tsx: the window title, the clip names and the command card lines.
