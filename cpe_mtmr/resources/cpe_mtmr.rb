# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_spectacle
# Resource:: cpe_spectacle
#

resource_name :cpe_mtmr
provides :cpe_mtmr, :os => 'darwin'
default_action :configure

action :configure do
  pretty_array = []
  node['cpe_mtmr']['preferences'].each do |_k, v|
    next unless v['enabled']

    pretty_array << v.reject { |subkey, _subvalue| subkey == 'enabled' || nil }
  end

  file '/Users/austin.culter/Library/Application Support/MTMR/items.json' do
    content Chef::JSONCompat.to_json_pretty(pretty_array)
    only_if { node['cpe_mtmr']['configure'] }
  end
end
