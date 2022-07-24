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
