log_level                :info
log_location             STDOUT
node_name                'jarek'
client_key               '/Users/jarek/code/muzzik.fm/chef/.chef/jarek.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef/validation.pem'
chef_server_url          'http://iMac27.local:4000'
cache_type               'BasicFile'
cache_options( :path => '/Users/jarek/code/muzzik.fm/chef/.chef/checksums' )
