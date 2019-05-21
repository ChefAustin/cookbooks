# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_spectacle
# Recipe:: default
#

return unless node.macos?

cpe_spectacle 'Configure Spectacle' do
  only_if { node['cpe_spectacle']['configure'] }
  action :configure
end
