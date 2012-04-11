package "libsqlite3-dev"
include_recipe "imagemagick::devel"

rbenv_ruby "1.9.3-p0"

execute "set_global_ruby" do
  user "root"
  command "rbenv global 1.9.3-p0"
end

rbenv_gem "bundler" do
  ruby_version "1.9.3-p0"
end
# rbenv rehash
execute "install_gems" do
  cwd "/vagrant"
  command "bundle install"
end

execute "generate_binstubs" do
  cwd "/vagrant"
  command "bundle install --binstubs"
end

# rbenv rehash

# directory "#{node[:nginx][:dir]}/sites-available/muzzikfm" do
#   mode 0644
#   owner "www-data"
#   group "www-data"
#   action :create
# end

template "/etc/init.d/unicorn" do
  source "unicorn_init.sh"
  owner "root"
  group "root"
  mode 0755
end

template "#{node[:nginx][:dir]}/sites-available/muzzikfm" do
  source "nginx-vagrant.conf.erb"
  owner "www-data"
  group "www-data"
  mode 0644
end

nginx_site "muzzikfm" do
  action :enable
end

execute "start_unicorn" do
  cwd "/vagrant"
  command "/etc/init.d/unicorn start"
  user "root"
end
