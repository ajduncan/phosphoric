# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.box_version = "=2.2.9"
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  config.vm.network "forwarded_port", guest: 28015, host: 28015, protocol: "udp"
  config.vm.network "forwarded_port", guest: 28015, host: 28015, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 28016, host: 28016
  config.ssh.insert_key = false
  require 'rbconfig'
  config.vm.provision "shell" do |sh|
    sh.path = "scripts/startrust.sh"
    sh.args = "init"
  end
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 4096]
  end
end
