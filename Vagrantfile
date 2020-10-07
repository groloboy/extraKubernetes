# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.define :servidor do |servidor|
        servidor.vm.box = "bento/ubuntu-20.04"
        servidor.vm.network :private_network, ip: "192.168.100.4"
        servidor.vm.hostname = "servidor"
        servidor.vm.synced_folder "dockerSwarm/", "/home/vagrant"
        servidor.vm.provision :shell, path: "instalacion.sh"
    end
    config.vm.define :worker1 do |worker1|
        worker1.vm.box = "bento/ubuntu-20.04"
        worker1.vm.network :private_network, ip: "192.168.100.5"
        worker1.vm.hostname = "worker1"
        worker1.vm.provision :shell, path: "instalacion.sh"
    end
    config.vm.define :worker2 do |worker2|
        worker2.vm.box = "bento/ubuntu-20.04"
        worker2.vm.network :private_network, ip: "192.168.100.6"
        worker2.vm.hostname = "worker2"
        worker2.vm.provision :shell, path: "instalacion.sh"
    end
end