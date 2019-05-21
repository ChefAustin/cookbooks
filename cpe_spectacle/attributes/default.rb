# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_spectacle
# Attributes:: default
#

default['cpe_spectacle']['configure'] = true

default['cpe_spectacle']['keys'] = {
  'RedoLastMove': 'alt+shift+cmd+z',
  'MakeSmaller': 'ctrl+alt+shift+left',
  'MoveToLowerRight': 'ctrl+shift+cmd+right',
  'MoveToUpperRight': 'ctrl+cmd+right',
  'MoveToBottomHalf': 'alt+cmd+down',
  'MoveToNextDisplay': 'ctrl+alt+cmd+right',
  'MoveToTopHalf': 'alt+cmd+up',
  'MoveToLowerLeft': 'ctrl+shift+cmd+left',
  'MakeLarger': 'ctrl+alt+shift+right',
  'UndoLastMove': '',
  'MoveToPreviousDisplay': 'ctrl+alt+cmd+left',
  'MoveToFullscreen': 'alt+cmd+f',
  'MoveToNextThird': 'ctrl+alt+right',
  'MoveToLeftHalf': 'alt+cmd+left',
  'MoveToCenter': 'alt+cmd+c',
  'MoveToRightHalf': 'alt+cmd+right',
  'MoveToUpperLeft': 'ctrl+cmd+left',
  'MoveToPreviousThird': 'ctrl+alt+left'
}
