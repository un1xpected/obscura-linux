#!/bin/bash
set -euo pipefail

SRC="/home/obscura-build/branding"
OUT="/home/obscura-build/branding/render"

mkdir -p "$OUT/logo" "$OUT/wallpapers"

render_svg() {
  local in="$1"
  local out="$2"
  local width="${3:-2560}"
  local height="${4:-1440}"

  if command -v rsvg-convert >/dev/null 2>&1; then
    rsvg-convert -w "$width" -h "$height" "$in" -o "$out"
  elif command -v inkscape >/dev/null 2>&1; then
    inkscape "$in" --export-type=png --export-filename="$out" --export-width="$width"
  else
    echo "ERROR: rsvg-convert or inkscape is required."
    echo "Install one of them, for example:"
    echo "  sudo pacman -S librsvg"
    echo "or"
    echo "  sudo pacman -S inkscape"
    exit 1
  fi
}

render_svg "$SRC/identity/logo/obscura-sigil.svg" "$OUT/logo/obscura-sigil.png" 1024 1024
render_svg "$SRC/wallpapers/hero/obscura-hero.svg" "$OUT/wallpapers/obscura-hero.png" 2560 1440
render_svg "$SRC/wallpapers/login/obscura-login.svg" "$OUT/wallpapers/obscura-login.png" 2560 1440

echo "==> Branding rendered into $OUT"
