# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_mtmr
# Recipe:: default
#

# return unless node.macos?

cpe_mtmr 'Configure MTMR' do
  only_if { node['cpe_mtmr']['configure'] }
  action :configure
end
