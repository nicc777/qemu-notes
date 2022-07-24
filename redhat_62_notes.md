# Red Hat 6.2 Notes

Important to note: I created this solution to experiment on old server software, not for GUI/Desktop use. I found the graphics to be severely broken when using the desktop, especially the fonts, and therefore I recommend doing everything in text mode only.

Assuming you have cloned this repository and the project directory is your current `$PWD`, you can follow the below instructions or modify to suite your needs.

## Prepare images directory and hard drive

Run:

```shell
mkdir images

./create_hdd_drive.sh $PWD/images/c_rh62
```

Also copy the RedHat 6.2 ISO to `$PWD/images/zoot-i386.iso`

Alternative, update the `install_redhat62.sh` and `launch_redhat62.sh` files to suite your needs.

The `$PWD/images/` directory now looks like this:

```shell
$ ls $PWD/images/
total 641M
drwxrwxr-x 4 user user 4.0K Jul 24 08:47 ..
-rw-rw-r-- 1 user user 641M Jul 24 08:50 zoot-i386.iso
-rw-r--r-- 1 user user 2.0G Jul 24 08:51 c_rh62.img
drwxrwxr-x 2 user user 4.0K Jul 24 08:51 .

```

## Installation

Run the following command:

```shell
./install_redhat62.sh
```

This will run the emulation booting from the mounted CD ROM drive containing the Red Hat 6.2 installation disc image (`$PWD/images/zoot-i386.iso` by default).

Go through the process of setting up Red Hat. TRext mode installation is advisable.

## First boot

TODO

## Remote connecting

TODO
