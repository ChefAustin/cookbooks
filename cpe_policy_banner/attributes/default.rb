# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_policy_banner
# Attributes:: default
#

default['cpe_policy_banner']['configure'] = true
default['cpe_policy_banner']['remove'] = true

default['cpe_policy_banner']['customize'] = {
  'font_face': 'Helvetica-Bold',
  'image_file': 'chef.png',
  'banner_message_1': "#{node['platform']} #{node['platform_version']}",
  'font_size_1': 120,
  'banner_message_2': "#{node['ipaddress']} - #{node['hostname']}",
  'font_size_2': 40,
  'banner_message_3': 'Bork, bork, bork',
  'font_size_3': 80
}
