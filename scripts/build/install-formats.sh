#!/bin/bash
set -euo pipefail

ROOT="/home/obscura-build/gentoo-root"
SRC="/home/obscura-build/share"

install -d "$ROOT/usr/share/mime/packages"
install -d "$ROOT/usr/share/applications"

install -m644 "$SRC/mime/packages/obscura-formats.xml" \
  "$ROOT/usr/share/mime/packages/obscura-formats.xml"

install -m644 "$SRC/applications/obscura-config-center.desktop" \
  "$ROOT/usr/share/applications/obscura-config-center.desktop"

install -m644 "$SRC/applications/obscura-theme-manager.desktop" \
  "$ROOT/usr/share/applications/obscura-theme-manager.desktop"

install -m644 "$SRC/applications/obscura-lab-runner.desktop" \
  "$ROOT/usr/share/applications/obscura-lab-runner.desktop"

install -m644 "$SRC/applications/obscura-pack-manager.desktop" \
  "$ROOT/usr/share/applications/obscura-pack-manager.desktop"

install -m644 "$SRC/applications/obscura-profile-manager.desktop" \
  "$ROOT/usr/share/applications/obscura-profile-manager.desktop"

echo "==> Obscura MIME and desktop associations deployed."

if [[ -x "$ROOT/usr/bin/update-mime-database" ]]; then
  chroot "$ROOT" /usr/bin/update-mime-database /usr/share/mime || true
fi

if [[ -x "$ROOT/usr/bin/update-desktop-database" ]]; then
  chroot "$ROOT" /usr/bin/update-desktop-database /usr/share/applications || true
fi
