#!/bin/sh
set -e

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
GAME_FILE="$SCRIPT_DIR/index.html"

if [ ! -f "$GAME_FILE" ]; then
  echo "Game file was not found. Keep the whole pixel-fighters folder together."
  exit 1
fi

if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$GAME_FILE"
elif command -v sensible-browser >/dev/null 2>&1; then
  sensible-browser "$GAME_FILE"
else
  echo "Open this file in a browser:"
  echo "$GAME_FILE"
fi
