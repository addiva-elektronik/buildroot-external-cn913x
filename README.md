Marvell CN913x Buildroot External Tree
======================================

This repository is a [Buildroot][] `BR2_EXTERNAL` tree for the [Marvell
CN913x family]() of platforms.


Available Configurations
------------------------

Note, all defconfigs below use pre-built GLIBC based toolchains,
courtesy of [Bootlin](https://bootlin.com/).

 * `marvell_cn9130_crb_defconfig`, minimal defconfig for the CN9130 CRB
 * More to come ...


Getting Started
---------------

In order to use [Buildroot][], you need to have a Linux distribution
installed on your workstation. Any reasonably recent Linux distribution
(Ubuntu, Debian, Fedora, Redhat, OpenSuse, etc.) will work fine.

Then, you need to install a small set of packages, as described in the
[Buildroot manual System requirements
section](https://buildroot.org/downloads/manual/manual.html#requirement).

For Debian/Ubuntu distributions, the following command allows to install
the necessary packages:

    $ sudo apt install debianutils sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio unzip rsync file bc git

There are also optional dependencies if you want to use Buildroot
features like interface configuration, legal information or
documentation. Please see the [corresponding manual
section](https://buildroot.org/downloads/manual/manual.html#requirement-optional).


Configure and Build
-------------------

This external tracks the latest supported version of Buildroot in the
GIT submodule `buildroot`.  When new releases of this external are
made, this submodule is moved to the next version, and all supported
builds are retested.

Therefore, when cloning this repository, make sure to always have the
latest submodule as well:

    $ git submodule update --init

Then you can configure the desired board:

    $ make marvell_cn913x_defconfig

By default, the build system put all build artifacts in the `output/`
sub-directory.  So you can `cd` into that to continue working, or you
can use another build directory when configuring, using `O=foo`:

    $ make marvell_cn913x_defconfig O=$(pwd)/output-generic

Now you can start the build:

    $ cd output-generic/
    $ make


Flashing and Booting
--------------------

The Buildroot configurations generate a ready-to-use SD card image, available as output/images/sdcard.img. Flash this image on a SD card:

    $ dd if=images/sdcard.img of=/dev/mmcblkX bs=1M

(Note: this assumes your SD card appears as `/dev/mmcblkX` on your system.)


Support
-------

Contact [Addiva Elektronik](https://www.addiva.se/contact/) for
commercial support on Marvell CN913x platforms.


[Buildroot]: https://www.buildroot.org/
