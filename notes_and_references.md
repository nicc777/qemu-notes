
- [Notes and References](#notes-and-references)
- [Various Notes](#various-notes)
  - [Creating a floppy image on Linux](#creating-a-floppy-image-on-linux)
  - [Preparing CD Rom Images](#preparing-cd-rom-images)
  - [Qemu Monitor](#qemu-monitor)
    - [Swapping media](#swapping-media)
    - [Sending keys to the Guest OS](#sending-keys-to-the-guest-os)
    - [Check all the TCP Ports being forwarded to the Guest](#check-all-the-tcp-ports-being-forwarded-to-the-guest)
- [Other Links](#other-links)

# Notes and References

This file contains several notes and references related to qemu, as well as Red Hat Linux 6.2 and any helpful information I came across.

# Various Notes

## Creating a floppy image on Linux

Run the command:

```shell
mkfs.vfat -C "floppy.img" 1440
```

Mount:

```shell
sudo mount -o loop,uid=$UID -t vfat floppy.img /path/to/mountpoint
```

Reference: https://www.legroom.net/2010/06/05/create-floppy-disk-images-within-linux

## Preparing CD Rom Images

I found [k3b](https://userbase.kde.org/K3b) to be a really easy GUI based application to make this happen.

Other ways exists as can be [learned from here...](https://askubuntu.com/questions/136165/how-to-create-an-iso-image-from-a-bunch-of-files-on-the-file-system)(Ubuntu specific)

## Qemu Monitor

### Swapping media

The startup file (for example `launch_redhat62.sh`) contain the line `-monitor stdio` which opens the monitor on the console.

Assuming the launcher is kept unchanged, the image will boot with the `zoot-i386.iso` CD in the CD Rom (virtually of course). In Red Hat you can mount the CD Rom as needed, but you can also swap it out with another image if needed. In the monitor type:

```shell
info block
```

_**Important**_: In Red Hat, make sure the CD is unmounted!

The output may look something like this:

```text
ide0-hd0 (#block167): /some/path/git/qemu-notes/images/c_rh62.img (raw)
    Attached to:      /machine/unattached/device[23]
    Cache mode:       writeback

ide1-cd0 (#block352): /some/path/git/qemu-notes/images/zoot-i386.iso (raw, read-only)
    Attached to:      /machine/unattached/device[24]
    Removable device: locked, tray closed
    Cache mode:       writeback

floppy0 (#block542): /some/path/git/qemu-notes/images/floppy.img (raw)
    Attached to:      /machine/unattached/device[16]
    Removable device: not locked, tray closed
    Cache mode:       writeback

sd0: [not inserted]
    Removable device: not locked, tray closed
```

To change the CD Rom image, type:

```shell
change ide1-cd0 /path/to/some-other.iso
```

And in Red Hat you can now mount the CD Rom again and use as you need.

### Sending keys to the Guest OS

In the monitor send keys with the command `sendkey` and then the key combination.

For example, on the qemu GUI running the guest (Red Hat), you change the console by sending `ALT` + `F2` (for the second console):

```shell
sendkey alt-f2
```

To return to the primary console:

```shell
sendkey alt-f1
```

### Check all the TCP Ports being forwarded to the Guest

Run the command:

```shell
info usernet
```

Output should look something like this, if the standard supplied launcher is used:

```text
Hub 0 (mynic):
  Protocol[State]    FD  Source Address  Port   Dest. Address  Port RecvQ SendQ
  TCP[HOST_FORWARD]  17       127.0.0.1  2023      10.0.50.15    23     0     0
  TCP[HOST_FORWARD]  16       127.0.0.1  2080      10.0.50.15    80     0     0
  TCP[HOST_FORWARD]  15       127.0.0.1  2119      10.0.50.15   119     0     0
  TCP[HOST_FORWARD]  14       127.0.0.1  2021      10.0.50.15    21     0     0
  TCP[HOST_FORWARD]  13       127.0.0.1  2098      10.0.50.15    98     0     0
  TCP[HOST_FORWARD]  12       127.0.0.1  2020      10.0.50.15    20     0     0
```

_**Note**_: The actual IP address may be different.

# Other Links

* [Qemu Monitor](https://qemu-project.gitlab.io/qemu/system/monitor.html)

