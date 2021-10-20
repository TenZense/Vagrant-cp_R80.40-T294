# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.check_guest_additions = false
    v.memory = 8192
    v.cpus = 4
  end
  config.vm.boot_timeout = 900
  config.vm.box = "cp_R80.40_T294_base"
  config.vm.guest = "redhat"
  config.vm.base_mac = "08002748C85C"
  config.vm.network "forwarded_port", guest: 443, host: 8443
  config.vm.network "forwarded_port", guest: 18190, host: 18190
  config.vm.network "forwarded_port", guest: 18264, host: 18264
  config.vm.network "forwarded_port", guest: 19009, host: 19009
  config.vm.provision "shell", name: "CP ftw", path: "mgmt_bootstrap.sh", privileged: false
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.ssh.sudo_command = "%c"
end
