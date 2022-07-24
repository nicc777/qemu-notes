#!/bin/sh

IMAGES="${1:=$PWD/images}"

qemu-system-i386 \
        -monitor stdio \
        -M pc-i440fx-6.0 \
        -hda $IMAGES/c_rh62.img \
        -cdrom $IMAGES/zoot-i386.iso \
        -boot c \
        -cpu pentium2 \
        -m 128 \
        -vga cirrus \
        -net nic,model=ne2k_pci \
        -net user,id=mynic,net=10.0.50.20/255.255.255.0,dns=8.8.8.8,hostfwd=tcp:127.0.0.1:2023-:23,hostfwd=tcp:127.0.0.1:2080-:80,hostfwd=tcp:127.0.0.1:2119-:119,hostfwd=tcp:127.0.0.1:2021-:21,hostfwd=tcp:127.0.0.1:2098-:98 \
        -rtc base=localtime
