#!/bin/sh

RHPATH=$1
IMAGES="${RHPATH:=$PWD/images}"

qemu-system-i386 \
        -monitor stdio \
        -M pc-i440fx-6.0 \
        -hda $IMAGES/c_rh62.img \
        -cdrom $IMAGES/zoot-i386.iso \
        -boot d \
        -cpu pentium2 \
        -m 128 \
        -vga cirrus \
        -device ne2k_pci,netdev=internet \
        -netdev user,id=internet,net=10.0.50.0/255.255.255.0,dns=8.8.8.8,ipv6=off \
        -rtc base=localtime
