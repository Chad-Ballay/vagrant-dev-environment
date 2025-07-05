# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vagrant.plugins = ["vagrant-vbguest", "vagrant-timezone", "vagrant-cachier"]
  
  #config.vbguest.iso_path = "https://download.virtualbox.org/virtualbox/7.2.0_BETA2/VBoxGuestAdditions_7.2.0_BETA2.iso"
  #config.vbguest.installer_options = { allow_kernel_upgrade: true }

  config.timezone.value = "CST6CDT"

  config.vm.box = "cloud-image/debian-12"
  config.vm.hostname = "aptrepo"
  config.vm.network :private_network, ip: "10.0.3.10"
  config.vm.disk :disk, size: "20GB", primary: true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
    vb.name = "aptrepo"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  config.vm.provision "shell" do |script|
      script.path ="./provision/local-apt-repo.sh"
  end
end


# # -*- mode: ruby -*-
# # vi: set ft=ruby :

# Vagrant.configure(2) do |config|
#   config.vagrant.plugins = ["vagrant-vbguest", "vagrant-timezone", "vagrant-cachier", "vagrant-disksize"]

#   if Vagrant.has_plugin?("vagrant-vbguest")
#     config.vbguest.iso_path = "https://download.virtualbox.org/virtualbox/7.2.0_BETA2/VBoxGuestAdditions_7.2.0_BETA2.iso"
#     config.vbguest.auto_update = false
#     config.vbguest.auto_reboot = true  
#   end

#   if Vagrant.has_plugin?("vagrant-timezone")
#     config.timezone.value = "CST6CDT"
#   end

#   config.vm.box = "cloud-image/debian-12"
#   config.vm.hostnmae = "aptrepo"
# end

#   config.vm.define "aptrepo" do |aptrepo|
#     aptrepo.vm.box = "cloud-image/debian-12"
#     aptrepo.vm.hostnmae = "aptrepo"
#     aptrepo.vm.network :private_network, ip: "10.0.3.10"
#     aptrepo.vm.provider "virtualbox" do |vb|
#       vb.name = "aptrepo"
#       vb.memory = "4096"
#       vb.cpus = 2
#       vb.vm.disk :disk, size: "20GB", primary: true
#       vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
#       vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
#     end
#     aptrepo.vm.provision "shell", inline: <<-SHELL
#       sudo apt-get update
#       #sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
#       #curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#       #sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
#       #sudo apt-get update
#       #sudo apt-get install -y docker-ce docker-ce-cli containerd.io
#       echo "CHSH"
#       sudo chsh -s /bin/bash vagrant
#       echo "=====CHSH====="
#       grep vagrant /etc/passwd
#       echo -e "set -o vi\n" | sudo tee -a /etc/bash.bashrc
#       echo -e "alias ll='ls -l'\n" | sudo tee -a /etc/bash.bashrc
#       echo "=====BASH.BASHRC====="
#       cat /etc/bash.bashrc
#     SHELL
#   end
# end