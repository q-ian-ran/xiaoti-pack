#!/usr/bin/env bash
# Xiao Ti Pack - Installer (macOS / Linux)
set -euo pipefail

DEST="$HOME/.workbuddy"
SRC="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "=========================================="
echo "  Xiao Ti Pack - Installer"
echo "=========================================="
echo ""

if [ ! -d "$DEST" ]; then
  echo "[1/4] Creating $DEST"
  mkdir -p "$DEST"
else
  echo "[1/4] Target exists: $DEST"
fi

mkdir -p "$DEST/skills"

echo "[2/4] Backing up existing persona files"
for f in SOUL.md IDENTITY.md USER.md; do
  if [ -f "$DEST/$f" ]; then
    cp "$DEST/$f" "$DEST/$f.bak"
  fi
done

echo "[3/4] Copying persona files"
cp "$SRC/persona/SOUL.md" "$DEST/SOUL.md"
cp "$SRC/persona/IDENTITY.md" "$DEST/IDENTITY.md"

if [ -f "$DEST/USER.md" ]; then
  echo "      USER.md already exists - kept yours, not overwritten"
else
  cp "$SRC/persona/USER.md" "$DEST/USER.md"
fi

echo "[4/4] Copying skill folder"
mkdir -p "$DEST/skills/ai-prompt-finder"
cp -R "$SRC/skills/ai-prompt-finder/." "$DEST/skills/ai-prompt-finder/"

echo ""
echo "=========================================="
echo "  Done."
echo ""
echo "  Next: restart WorkBuddy, then say 初始化"
echo "=========================================="
echo ""
