# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.data_bags_path = "chef/data_bags"
    chef.roles_path = "chef/roles"
    chef.add_role "dev"

    chef.json = { :mysql_password => "zipazword" }
  end
end
