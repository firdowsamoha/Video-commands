#!/usr/bin/env bash
# Prepare a take for the video-effects project on any OS.
# usage: prepare-take.sh <input video> <name> [--no-matte]
# Writes <project>/public/takes/<name>/{take.mp4, masks/, fg/, sticker/, source.json}.
# macOS: person masks come from the project's Apple Vision tool. Linux/Windows: u2net_human_seg (onnxruntime).
# --no-matte skips the cut-out steps (fine for effects that do not cut the speaker out).
set -euo pipefail
IN="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"; NAME="$2"; MATTE=1; [ "${3:-}" = "--no-matte" ] && MATTE=0
HERE="$(cd "$(dirname "$0")" && pwd)"
PROJ="${VFX_PROJECT:-$(cd "$HERE/../../video-effects" && pwd)}" # the effects project shipped next to fx-common
MODEL="${VFX_MODEL_DIR:-$HOME/.cache/video-effects}/u2net_human_seg.onnx"
cd "$PROJ"; OUT="public/takes/$NAME"; mkdir -p "$OUT"

echo "1/4 transcode to 1080x1920 @ 30 fps"
ffmpeg -y -loglevel error -i "$IN" -vf "scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,fps=30,setsar=1" \
	-c:v libx264 -crf 16 -preset medium -pix_fmt yuv420p -c:a aac -b:a 320k -movflags +faststart "$OUT/take.mp4"
FRAMES=$(ffprobe -v error -count_frames -select_streams v -show_entries stream=nb_read_frames -of csv=p=0 "$OUT/take.mp4")

if [ $MATTE = 1 ]; then
	echo "2/4 person masks"
	if [ "$(uname)" = Darwin ] && command -v swiftc >/dev/null; then
		[ -x tools/matte ] || swiftc -O tools/matte.swift -o tools/matte
		tools/matte "$OUT/take.mp4" "$OUT/masks"
	else
		python3 -c "import onnxruntime" 2>/dev/null || pip install -q onnxruntime
		[ -f "$MODEL" ] || { mkdir -p "$(dirname "$MODEL")"; curl -sSL -o "$MODEL" https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net_human_seg.onnx; }
		python3 -I "$HERE/seg.py" "$MODEL" "$OUT/take.mp4" "$OUT/masks"
	fi
	echo "3/4 cut-outs + sticker borders"
	python3 scripts/make-fg.py "$OUT/take.mp4" "$OUT/masks" "$OUT/fg"
	python3 scripts/make-sticker-mattes.py "$OUT/fg" "$OUT/sticker"
	FRAMES=$(ls "$OUT/fg" | grep -c '\.webp$')
fi

echo "4/4 still for the face position + source.json"
ffmpeg -y -loglevel error -ss 2 -i "$OUT/take.mp4" -frames:v 1 -vf scale=540:-1 "$OUT/still-half.png"
FACE='{ "x": 540, "y": 640, "mouthY": 960 }'
if [ "$(uname)" = Darwin ] && command -v swiftc >/dev/null; then
	[ -x tools/face ] || swiftc -O tools/face.swift -o tools/face
	FACE=$(tools/face "$OUT/take.mp4" 2>/dev/null || echo "$FACE")
fi
cat > "$OUT/source.json" <<JSON
{ "video": "takes/$NAME/take.mp4", "matte": "takes/$NAME/fg", "sticker": "takes/$NAME/sticker", "frames": $FRAMES, "face": $FACE, "continuous": true }
JSON
cat "$OUT/source.json"
echo "Check the face: open $PROJ/$OUT/still-half.png (half size, so double the pixel values)."
