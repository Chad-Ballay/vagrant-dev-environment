chadballay@mac01 vagrant-dev-environment % cat Vagrantfile
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "cloud-image/debian-12"
  config.vm.box_version = "20250530.2128.0"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
    echo "CHSH"
    sudo chsh -s /bin/bash vagrant
    echo "=====CHSH====="
    grep vagrant /etc/passwd
    echo -e "set -o vi\n" | sudo tee -a /etc/bash.bashrc
    echo -e "alias ll='ls -l'\n" | sudo tee -a /etc/bash.bashrc
    echo "=====BASH.BASHRC====="
    cat /etc/bash.bashrc
  SHELL
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

end
chadballay@mac01 vagrant-dev-environment %
