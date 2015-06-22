# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos6.5"
  config.vm.box_url = "http://www.lyricalsoftware.com/downloads/centos65.box"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider :virtualbox do |vb|
    file_to_disk = "./disk/disk.vdi"
    unless File.exist?(file_to_disk)
      vb.customize ['createhd', '--filename', file_to_disk, '--size', 50 * 1024]
      vb.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    end
  end
  config.vm.provision "shell", :path => "prov/add-disk.sh"
end
