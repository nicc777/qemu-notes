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
        -net nic,model=ne2k_pci \
        -net user,id=mynic,net=10.0.50.20/255.255.255.0,dns=8.8.8.8 \
        -rtc base=localtime
