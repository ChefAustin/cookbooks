# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_policy_banner
# Recipe:: default
#

return unless node.macos?

cpe_policy_banner 'Remove existing PolicyBanner' do
  only_if { node['cpe_policy_banner']['remove'] }
  action :remove
end

cpe_policy_banner 'Applying defined PolicyBanner' do
  only_if { node['cpe_policy_banner']['configure'] }
  action :configure
end
