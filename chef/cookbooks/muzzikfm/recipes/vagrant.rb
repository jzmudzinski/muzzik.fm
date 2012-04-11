
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
# rbenv rehash
