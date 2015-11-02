# conda-build-osx-10.9

Vagrant config for building conda packages on OSX

See this
[README](https://github.com/sed-pro-inria/conda-build-centos-6.6/blob/master/README.md).

Some notes related to the OSX box:

Conda packages are build only on the `conda-build-osx-10.9` box.
`conda-build-osx-10.9-base` box is used only to build the
`conda-build-osx-10.9` box.

I (David Froger) very often encounter bugs using NFS synced folderos OSX, and
prefere configure shared folder using rsync:

    config.vm.synced_folder "/path/to/repo/inria-pro-sed/conda-recipes",
        "/Users/vagrant/repo/inria-pro-sed/conda-recipes",
        type: "rsync",
        rsync__exclude: ".git/"

I (David Froger) encounters bugs setting memory and cpus on OSX, and do not
include the corresponding lines. 

`conda-build-osx-10.9-base` do not include version number in its
`_bashprofile`, as conda packages are not build on it.
