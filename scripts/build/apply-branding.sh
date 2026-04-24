#!/bin/bash
set -euo pipefail

ROOT="/home/obscura-build/gentoo-root"
SRC="/home/obscura-build/branding"

install -d "$ROOT/usr/share/backgrounds/obscura"
install -d "$ROOT/usr/share/obscura/branding/logo"
install -d "$ROOT/etc/xdg/waybar"
install -d "$ROOT/etc/xdg/wofi"
install -d "$ROOT/etc/xdg/mako"
install -d "$ROOT/etc/xdg/foot"
install -d "$ROOT/etc/xdg/gtk-3.0"
install -d "$ROOT/etc/xdg/gtk-4.0"
install -d "$ROOT/etc/sway"
install -d "$ROOT/usr/local/bin"

install -m644 "$SRC/wallpapers/hero/obscura-hero.svg" "$ROOT/usr/share/backgrounds/obscura/obscura-hero.svg"
install -m644 "$SRC/wallpapers/login/obscura-login.svg" "$ROOT/usr/share/backgrounds/obscura/obscura-login.svg"
install -m644 "$SRC/identity/logo/obscura-sigil.svg" "$ROOT/usr/share/obscura/branding/logo/obscura-sigil.svg"

install -m644 "$SRC/shell/waybar/config" "$ROOT/etc/xdg/waybar/config"
install -m644 "$SRC/shell/waybar/style.css" "$ROOT/etc/xdg/waybar/style.css"

install -m644 "$SRC/shell/wofi/config" "$ROOT/etc/xdg/wofi/config"
install -m644 "$SRC/shell/wofi/style.css" "$ROOT/etc/xdg/wofi/style.css"

install -m644 "$SRC/shell/mako/config" "$ROOT/etc/xdg/mako/config"
install -m644 "$SRC/shell/foot/foot.ini" "$ROOT/etc/xdg/foot/foot.ini"

install -m644 "$SRC/shell/gtk-3.0/settings.ini" "$ROOT/etc/xdg/gtk-3.0/settings.ini"
install -m644 "$SRC/shell/gtk-4.0/settings.ini" "$ROOT/etc/xdg/gtk-4.0/settings.ini"

install -m644 "$SRC/shell/sway/config" "$ROOT/etc/sway/config"
install -m755 "$SRC/shell/session/obscura-session" "$ROOT/usr/local/bin/obscura-session"

echo "==> Obscura branding deployed to chroot."
