cpe_policy_banner Cookbook
=====================
Configures keyboard shortcuts for `Spectacle.app` on macOS nodes.

Requirements
------------
* macOS

Attributes
----------
* `node['cpe_spectacle']['configure']`
* `node['cpe_spectacle']['keys']['RedoLastMove']`
* `node['cpe_spectacle']['keys']['MakeSmaller']`
* `node['cpe_spectacle']['keys']['MoveToLowerRight']`
* `node['cpe_spectacle']['keys']['MoveToUpperRight']`
* `node['cpe_spectacle']['keys']['MoveToBottomHalf']`
* `node['cpe_spectacle']['keys']['MoveToNextDisplay']`
* `node['cpe_spectacle']['keys']['MoveToTopHalf']`
* `node['cpe_spectacle']['keys']['MoveToLowerLeft']`
* `node['cpe_spectacle']['keys']['MakeLarger']`
* `node['cpe_spectacle']['keys']['UndoLastMove']`
* `node['cpe_spectacle']['keys']['MoveToPreviousDisplay']`
* `node['cpe_spectacle']['keys']['MoveToFullscreen']`
* `node['cpe_spectacle']['keys']['MoveToNextThird']`
* `node['cpe_spectacle']['keys']['MoveToLeftHalf']`
* `node['cpe_spectacle']['keys']['MoveToCenter']`
* `node['cpe_spectacle']['keys']['MoveToRightHalf']`
* `node['cpe_spectacle']['keys']['MoveToUpperLeft']`
* `node['cpe_spectacle']['keys']['MoveToPreviousThird']`

Usage
-----
Set a hotkey-action in `attributes/default.rb` as a string of abbreviated characters in `+`-delimited format.

i.e. `'ctrl+shift+cmd+left'`

TODO
-----
DRY it up
