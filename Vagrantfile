# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_NAME = ENV['BOX_NAME'] || "precise64"
BOX_URI = ENV['BOX_URI'] || "http://files.vagrantup.com/precise64.box"
BOX_HOSTNAME = "vagrant-strider"

Vagrant.configure("2") do |config|
  
  config.vm.box = BOX_NAME
  config.vm.box_url = BOX_URI
  config.vm.hostname = BOX_HOSTNAME
  config.vm.network :forwarded_port, host: 3000, guest: 3000

  config.ssh.forward_agent = true
  config.ssh.max_tries = 20
  config.ssh.timeout = 120

  #config.vm.provision :chef_solo do |chef|
  #  chef.cookbooks_path = ["cookbooks"]
  #  chef.add_recipe "git"
  #  chef.add_recipe "nodejs"
  #  chef.add_recipe "mongodb::default" 
  #  chef.add_recipe "vim"
  #  chef.json = {
  #    :mongodb => {
  #      :dbpath => "/var/lib/mongodb", 
  #      :logpath => "/var/log/mongodb",  
  #      :port => "27017"  
  #    },
  #    :git => {
  #      :prefix => "/usr/local"
  #    }
  #  }
  #end
  
  config.vm.provision :shell, :path => "provision/script.sh"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "4"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--memory", "512", "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

end
