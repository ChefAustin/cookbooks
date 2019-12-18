# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_spectacle
# Resource:: cpe_spectacle
#

resource_name :cpe_mtmr
provides :cpe_mtmr, :os => 'darwin'
default_action :configure

action :configure do

  pretty_json = Chef::JSONCompat.to_json_pretty(node['cpe_mtmr']['preferences'])

  file '/Users/austin.culter/Library/Application Support/MTMR/items.json' do
    content [pretty_json]
    only_if { node['cpe_mtmr']['configure'] }
  end

  # template 'items.json' do
  #   source 'items.json.erb'
  #   variables :settings => pretty_settings
  #   action :create
  # end
end
