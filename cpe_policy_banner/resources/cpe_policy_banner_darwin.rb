# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_policy_banner
# Resource:: cpe_policy_banner
#

resource_name :cpe_policy_banner_darwin
provides :cpe_policy_banner, :os => 'darwin'
default_action :configure

action :remove do
  directory '/Library/Security/PolicyBanner.rtfd' do
    recursive true
    action :delete
  end
end

action :configure do
  directory '/Library/Security/PolicyBanner.rtfd' do
    path '/Library/Security/PolicyBanner.rtfd'
    owner node.console_user
    group 'staff'
    mode '0755'
    action :create
  end

  template 'TXT.rtf.erb' do
    source 'TXT.rtf.erb'
    path '/Library/Security/PolicyBanner.rtfd/TXT.rtf'
    owner node.console_user
    group 'staff'
    mode '0644'
    variables(
      font_face: node['cpe_policy_banner']['customize']['font_face'],
      banner_message_1: node['cpe_policy_banner']['customize']['banner_message_1'],
      font_size_1: node['cpe_policy_banner']['customize']['font_size_1'],
      image_file: node['cpe_policy_banner']['customize']['image_file'],
      banner_message_2: node['cpe_policy_banner']['customize']['banner_message_2'],
      font_size_2: node['cpe_policy_banner']['customize']['font_size_2'],
      banner_message_3: node['cpe_policy_banner']['customize']['banner_message_3'],
      font_size_3: node['cpe_policy_banner']['customize']['font_size_3']
    )
  end

  cookbook_file 'chef.png' do
    path '/Library/Security/PolicyBanner.rtfd/chef.png'
    owner node.console_user
    group 'staff'
    mode '0644'
    action :create
  end
end
