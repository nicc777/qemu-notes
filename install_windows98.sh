#!/bin/sh

RHPATH=$1
IMAGES="${RHPATH:=$PWD/images}"

qemu-system-i386 \
        -monitor stdio \
        -M pc-i440fx-6.0 \
        -fda $IMAGES/windows_floppy_boot.img \
        -hda $IMAGES/c_win98.img \
        -cdrom $IMAGES/windows_98_se_full_retail.iso \
        -boot a \
        -cpu pentium2 \
        -m 128 \
        -vga cirrus \
        -device ne2k_isa,iobase=0x220,irq=11,netdev=internet \
        -netdev user,id=internet,net=10.0.50.0/255.255.255.0,dns=8.8.8.8,ipv6=off \
        -no-acpi \
        -rtc base=localtime
