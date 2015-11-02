# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Set vagrant box.
  config.vm.box = "inria-pro-sed/conda-build-osx-10.9-base"

  # Shared folders.
  config.vm.synced_folder ".", "/vagrant",
    type: "rsync",
    rsync__exclude: ".git/"

  # Configuration files.
  config.vm.provision "shell",
    path: "script/rc.sh",
    privileged: false

  # Yum packages.
  config.vm.provision "shell", 
    path: "script/gfortran.sh",
    privileged: true

  # Miniconda.
  config.vm.provision "shell",
    path: "script/miniconda_install.sh",
    privileged: false

  # Miniconda packages.
  config.vm.provision "shell",
    path: "script/miniconda_packages.sh",
    privileged: false

  # ccache
  config.vm.provision "shell",
    path: "script/ccache.sh",
    privileged: true

  # Free space
  config.vm.provision "shell",
    path: "script/freespace.sh"

end
