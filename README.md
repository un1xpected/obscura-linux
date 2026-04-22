# Obscura Linux

A professional Linux distribution focused on cybersecurity, pentesting, and gaming.

## Architecture
- **Base**: Gentoo Linux (stage3 amd64)
- **Init**: OpenRC
- **Desktop**: Hyprland + Obscura Shell
- **Boot**: GRUB2 + Plymouth (Obscura theme)
- **Login**: greetd + Obscura Greeter
- **Target**: x86_64 (amd64)

## Profiles
- `obscura-ghost` → Minimal, OPSEC focused
- `obscura-blade` → Full pentest suite
- `obscura-forge` → Development + Security
- `obscura-arena` → Gaming optimized

## Build
See docs/building.md

## License
GPL-3.0
