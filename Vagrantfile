# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "local" do |local|
    local.vm.box = "debian/buster64"
    local.ssh.insert_key = false
    local.vm.hostname = "mediawiki.box"
    local.vm.synced_folder ".", "/vagrant", create: true, disabled: false
    local.vm.network :private_network, ip: "192.168.60.10"

    local.vm.provider :virtualbox do |vb|
      vb.name = "mediawiki"
      vb.memory = 2048
      vb.cpus = 2
    end
  end
end