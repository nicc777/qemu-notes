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

| Topic                                   | Description                     |
|-----------------------------------------|---------------------------------|
| [Red Hat 6.2 Notes](redhat_62_notes.md) | Notes for launching Red Hat 6.2 |

# Creating a Hard Drive image

Assuming you have cloned this repository and the project directory is your current `$PWD`, you can use the following command to create a 1GB hard drive in a newly created `images/` directory (which is in `.gitignore`):

```shell
$ ./create_hdd_drive.sh $PWD/images/c 1G
Formatting '/home/your-user-name/git/qemu-notes/images/c.img', fmt=raw size=1073741824

$ ls images 
total 12K
drwxrwxr-x 4 user user 4.0K Jul 24 08:43 ..
-rw-r--r-- 1 user user 1.0G Jul 24 08:43 c.img
drwxrwxr-x 2 user user 4.0K Jul 24 08:43 .
```

The default, with no parameters passed to the script, is to create a 2GB drive in the `./images/` directory.
