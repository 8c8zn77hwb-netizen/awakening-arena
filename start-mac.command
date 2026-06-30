#!/bin/zsh
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
GAME_FILE="$SCRIPT_DIR/index.html"

if [ ! -f "$GAME_FILE" ]; then
  osascript -e 'display dialog "Game file was not found. Keep the whole pixel-fighters folder together." buttons {"OK"} default button "OK"'
  exit 1
fi

open "$GAME_FILE"
