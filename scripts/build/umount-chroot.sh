#!/bin/bash
# Obscura Linux - Chroot Unmount Script

CHROOT="/home/obscura-build/gentoo-root"

echo "==> Chroot dizinleri ayrılıyor..."

umount -l "${CHROOT}/dev"
umount -l "${CHROOT}/proc"
umount -l "${CHROOT}/sys"
umount -l "${CHROOT}/run"

echo "==> Chroot ayrıldı."
