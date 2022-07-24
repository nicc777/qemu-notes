#!/bin/sh

PARAM_ONE=$1
PARAM_TWO=$2

DRIVE_NAME="${PARAM_ONE:=c}"
SIZE="${PARAM_TWO:=2G}"

qemu-img create $DRIVE_NAME.img $SIZE
