#!/bin/bash
# Obscura Linux - Chroot Mount Script

CHROOT="/home/obscura-build/gentoo-root"

echo "==> Chroot dizinleri bağlanıyor..."

mount --types proc /proc "${CHROOT}/proc"
mount --rbind /sys "${CHROOT}/sys"
mount --make-rslave "${CHROOT}/sys"
mount --rbind /dev "${CHROOT}/dev"
mount --make-rslave "${CHROOT}/dev"
mount --bind /run "${CHROOT}/run"
mount --make-slave "${CHROOT}/run"

echo "==> DNS ayarlanıyor..."
cp /etc/resolv.conf "${CHROOT}/etc/resolv.conf"

echo "==> Chroot hazır."
echo "==> Girmek için: sudo chroot ${CHROOT} /bin/bash"
