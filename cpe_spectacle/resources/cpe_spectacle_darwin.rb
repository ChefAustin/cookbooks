# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_spectacle
# Resource:: cpe_spectacle
#

resource_name :cpe_spectacle_darwin
provides :cpe_spectacle, :os => 'darwin'
default_action :configure

action :configure do
  template "/Users/#{node.console_user}/Library/Application Support/Spectacle/Shortcuts.json" do
    source 'Shortcuts.json.erb'
    mode '0644'
    variables(
      RedoLastMove: node['cpe_spectacle']['keys']['RedoLastMove'],
      MakeSmaller: node['cpe_spectacle']['keys']['MakeSmaller'],
      MoveToLowerRight: node['cpe_spectacle']['keys']['MoveToLowerRight'],
      MoveToUpperRight: node['cpe_spectacle']['keys']['MoveToUpperRight'],
      MoveToBottomHalf: node['cpe_spectacle']['keys']['MoveToBottomHalf'],
      MoveToNextDisplay: node['cpe_spectacle']['keys']['MoveToNextDisplay'],
      MoveToTopHalf: node['cpe_spectacle']['keys']['MoveToTopHalf'],
      MoveToLowerLeft: node['cpe_spectacle']['keys']['MoveToLowerLeft'],
      MakeLarger: node['cpe_spectacle']['keys']['MakeLarger'],
      UndoLastMove: node['cpe_spectacle']['keys']['UndoLastMove'],
      MoveToPreviousDisplay: node['cpe_spectacle']['keys']['MoveToPreviousDisplay'],
      MoveToFullscreen: node['cpe_spectacle']['keys']['MoveToFullscreen'],
      MoveToNextThird: node['cpe_spectacle']['keys']['MoveToNextThird'],
      MoveToLeftHalf: node['cpe_spectacle']['keys']['MoveToLeftHalf'],
      MoveToCenter: node['cpe_spectacle']['keys']['MoveToCenter'],
      MoveToRightHalf: node['cpe_spectacle']['keys']['MoveToRightHalf'],
      MoveToUpperLeft: node['cpe_spectacle']['keys']['MoveToUpperLeft'],
      MoveToPreviousThird: node['cpe_spectacle']['keys']['MoveToPreviousThird']
    )
  end

  def reload_spectacle
    # TODO: Need to kill and respawn Spectacle for prefs to be reloaded?
  end
end
