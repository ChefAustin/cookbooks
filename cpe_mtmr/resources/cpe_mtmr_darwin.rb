# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_mtmr
# Resource:: cpe_mtmr
#

resource_name :cpe_mtmr_banner_darwin
provides :cpe_mtmr, :os => 'darwin'
default_action :configure

action :remove do
  directory "/Users/austin.culter/Library/Application Support/MTMR" do # TODO: Switch to node.console_user after testing
    recursive true
    action :delete
  end
end

action :install do
  dmg_package 'MTMR' do
    destination node['cpe_mtmr']['installation']['destination']
    dmg_name "MTMR #{node['cpe_mtmr']['install']['version']}.dmg"
    owner 'austin.culter' # TODO: Switch to node.console_user after testing
    source "https://github.com/Toxblh/MTMR/releases/download/v0.20.1/MTMR.#{version}.dmg"
    volumes_dir '/Volumes/MTMR'
  end
end

action :uninstall do
  directory '/Applications/MTMR.app' do
    recursive true
    action :delete
  end

  directory "/Users/austin.culter/Library/Application Support/MTMR" do # TODO: Switch to node.console_user after testing
    recursive true
    action :delete
  end
end

action :configure do
  configs = []
  enabled_btns = node['cpe_mtmr']['customize']['buttons'].reject { |_k, v| v >= 0 }
  enabled_btns.keys.each do |btn_key|
    configs << node['cpe_mtmr']['customize']['button_config'][btn_key.to_s] + ','
  end
  template "/Users/austin.culter/Library/Application Support/MTMR/items.json" do # TODO: Switch to node.console_user after testing
    source 'items.json.erb'
    owner 'austin.culter' # TODO: Switch to node.console_user after testing
    group 'staff'
    mode '0644'
    variables(
      'conf' => configs
    )
  end
end
