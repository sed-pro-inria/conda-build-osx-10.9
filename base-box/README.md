# osx-10.9-base

This is a base box for the `osx-10.9` box.

The base box essentially install the `SDK` missing in `Mavericks`. This require
to download 4 files from https://developer.apple.com/downloads/, and to place
them in `~/xcode` directory:
    - `Xcode_6.4.dmg`
    - `xcode_3.2.6_and_ios_sdk_4.3.dmg`
    - `xcode4630916281a.dmg`
    - `xcode_5.1.1.dmg`

All of these files make about `10 Go`. They are then copied to the vagrant box
using `rsync`, to install `SDK`. (Using a `NFS` folder would be much more
faster, but for me, 90% of the time, it bugs).

These two operations make the creation of the base box very long. The good
thing is the base box is created one and for all.

The box in based on
[AndrewDryga](https://github.com/AndrewDryga/vagrant-box-osx) `Mavericks` box,
which can be downloaded like this:

    curl -O http://files.dryga.com/boxes/osx-mavericks-0.1.0.box
    vagrant box add box/osx-mavericks-0.1.0.box --name AndrewDryga/osx-mavericks-0.1.0

Then the box is packaged as usual, see the root `README.md`.
