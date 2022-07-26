#!/bin/sh

RHPATH=$1
IMAGES="${RHPATH:=$PWD/images}"

qemu-system-i386 \
        -monitor stdio \
        -M pc-i440fx-6.0 \
        -hda $IMAGES/c_rh62.img \
        -cdrom $IMAGES/zoot-i386.iso \
        -boot c \
        -cpu pentium2 \
        -m 128 \
        -vga cirrus \
	-device ne2k_pci,netdev=internet \
        -netdev user,id=internet,net=10.0.50.0/255.255.255.0,dns=8.8.8.8,ipv6=off,hostfwd=tcp:0.0.0.0:2023-:23,hostfwd=tcp:0.0.0.0:2080-:80,hostfwd=tcp:0.0.0.0:2119-:119,hostfwd=tcp:0.0.0.0:2021-:21,hostfwd=tcp:127.0.0.1:2098-:98,hostfwd=tcp:0.0.0.0:2020-:20 \
        -rtc base=localtime
