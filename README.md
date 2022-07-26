# qemu-notes

Notes for qemu usage

This repository contains a collection of notes and scripts I use for my [qemu](https://www.qemu.org/) emulations.

The hardware emulations is roughly teh following:

* Pentium 2 based system
* 128 MB RAM (less for some machines)
* 2GB Hard Drive (less for some machines)
* Cirrus graphics (Logic GD 5446) (as reported by RedHat OS)
* No Sound

The network cards depends on the OS.

For more detailed notes, consult the documentation as listed below:

| Topic                                                   | Description                                                                                       |
|---------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| [Red Hat 6.2 Notes](redhat_62_notes.md)                 | Notes for launching Red Hat 6.2                                                                   |
| [Windows 98 Notes](windows_98_notes.md)                 | Notes for launching Red Hat 6.2                                                                   |
| [General Notes and References](notes_and_references.md) | Notes for using Qemu as well as some other notes I made during my experimentation. Helpful hacks. |

On my setup, the networking works, but I have not yet got to the point where two running hosts can talk to each other directly. FTP "works", but requires some hacking. I will endeavour to update these notes as I learn more.
