# Windows 98 Notes

_**Important**_: You will need original installation media (CD ROM) with the Windows Key. Create an ISO image from the original CD Media.

_**Important**_: You also will need a Windows 98 Boot Floppy Image.

Windows 98 setup is slightly more involved than the [RedHat 6.2 installation](redhat_62_notes.md)

The graphics mode should be fine for higher resolutions - I personally prefer to use 1024x768 as this was the resolution I used back in the day.

However, the biggest challenge is the network card. Post installation you need to also install the `Novell NE2000 compatible` driver and you can use the supplied drivers from the Windows 98 CD.

You may have to tweak the IRQ and address settings in the `launch_windows98.sh` file.

All the image file names I use are listed below and you should modify them as required in the installation and launcher scripts:

* Windows 98 Boot Floppy: `windows_floppy_boot.img`
* Hard Drive Image: `c_win98.img`
* Windows 98 CD Rom Image: `windows_98_se_full_retail.iso`

Basic steps to get the installation process going:

* Boot from floppy using the `install_windows98.sh` script
* Run `fdisk` to prepare the hard drive
* Reboot - use the `install_windows98.sh` script again
* Once booted, format the C drive: `format c:`
* Once done, run the installer: `d:setup`
* Eventually, When the `restart` dialog appears, use the Qemu monitor to just exit the VM by entering `q+ENTER`
* You can now use the `launch_windows98.sh` script from the next boot onwards.

The installation process is GUI driven and should be fairly straight forward.
