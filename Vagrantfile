# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provision :shell, path: "provisioning.sh"

  config.vm.define "userApi" do |userApi|
	userApi.vm.box = "hashicorp/bionic64"
	config.vm.network "forwarded_port", guest: 8083, host: 8083, host_ip: "127.0.0.1"
	config.vm.network "private_network", ip: "172.16.0.10"
	userApi.vm.provision :shell, path: "usersApi-provisioning.sh"
  end
  
  config.vm.define "authApi" do |authApi|
	authApi.vm.box = "hashicorp/bionic64"
	config.vm.network "forwarded_port", guest: 8000, host: 8000, host_ip: "127.0.0.1"
	config.vm.network "private_network", ip: "172.16.0.15"
	#authApi.vm.provision :shell, path: "authApi-provisioning.sh"
  end

  config.vm.define "todoApi" do |todoApi|
	todoApi.vm.box = "hashicorp/bionic64"
	config.vm.network "forwarded_port", guest: 8082, host: 8082, host_ip: "127.0.0.1"
	config.vm.network "private_network", ip: "172.16.0.20"
	#todoApi.vm.provision :shell, path: "todoApi-provisioning.sh"
  end
  
  config.vm.define "logMessage" do |logMessage|
	logMessage.vm.box = "hashicorp/bionic64"
	config.vm.network "forwarded_port", guest: 6379, host: 6379, host_ip: "127.0.0.1"
	config.vm.network "private_network", ip: "172.16.0.25"
	#logMessage.vm.provision :shell, path: "logMessage-provisioning.sh"
  end

  config.vm.define "frontend" do |frontend|
	frontend.vm.box = "hashicorp/bionic64"
	config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
	config.vm.network "private_network", ip: "172.16.0.30"
	#frontend.vm.provision :shell, path: "frontend-provisioning.sh"
  end


end
