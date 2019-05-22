# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_mtmr
# Attributes:: default
#

#### 'Killswitch' configurations
default['cpe_mtmr']['install'] = nil
default['cpe_mtmr']['uninstall'] = nil
default['cpe_mtmr']['configure'] = nil
default['cpe_mtmr']['remove'] = nil

#### Install action configuration parameters
default['cpe_mtmr']['installation'] = {
  'version': '0.21.1',
  'destination': '/Applications',
  'dmg_source': "https://github.com/Toxblh/MTMR/releases/download/v0.20.1/MTMR.#{version}.dmg"
}

#### Default Button configuration
## Custom button
# Types:
# => appleScriptTitledButton (return value of script is button text)
# => staticButton (customizable button type)
#
# Actions:
# => appleScript (requires actionAppleScript)
# =>  => actionAppleScript (requires 'inline', 'filePath', or 'base64')
# => hidKey (requires keycode)
# => keyPress (requires keycode)
# => openUrl (requires url)
# => shellScript (requires executablePath)
default['cpe_mtmr']['customize']['buttons'] = [
  {
    'type': 'staticButton',
    'order_index': nil,
    'align': 'left',
    'bordered': true,
    'width': 50,
    'action': 'openUrl',
    'image': {
      "base64": 'yourBase64EncodedImage'
    },
    'title': 'Go to Google',
    'url': 'https://google.com'

  },
  {
    'type': 'staticButton',
    'order_index': nil,
    'align': 'left',
    'bordered': true,
    'width': 50,
    'action': 'shellScript',
    'image': {
      "base64": 'yourBase64EncodedImage'
    },
    'title': 'Open Finder',
    'executablePath': ['/Applications/Finder.app']
  }
]

#### Default Button configuration
# Brightness down button
default['cpe_mtmr']['customize']['buttons']['brightnessDown'] = {
  'type': 'brightnessDown',
  'order_index': 1,
  'align': 'left',
  'width': 50
}

# Brightness up button
default['cpe_mtmr']['customize']['buttons']['brightnessUp'] = {
  'type': 'brightnessUp',
  'order_index': 2,
  'align': 'left',
  'width': 50
}

# Classic 'Escape' button
default['cpe_mtmr']['customize']['buttons']['escape'] = {
  'type': 'escape',
  'order_index': nil,
  'align': 'left',
  'width': 50
}
# MTMR's 'Exit' button
default['cpe_mtmr']['customize']['buttons']['exitTouchbar'] = {
  'type': 'exitTouchbar',
  'order_index': 3,
  'align': 'left',
  'width': 50
}

# Keyboard illumination down
default['cpe_mtmr']['customize']['buttons']['illuminationDown'] = {
  'type': 'illuminationDown',
  'order_index': 4,
  'align': 'left',
  'width': 50
}

# Keyboard illumination up
default['cpe_mtmr']['customize']['buttons']['illuminationUp'] = {
  'type': 'illuminationUp',
  'order_index': 5,
  'align': 'left',
  'width': 50
}

# Volume mute button
default['cpe_mtmr']['customize']['buttons']['mute'] = {
  'type': 'mute',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

# Music next button
default['cpe_mtmr']['customize']['buttons']['next'] = {
  'type': 'next',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

# Music play button
default['cpe_mtmr']['customize']['buttons']['play'] = {
  'type': 'play',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

# Music previous button
default['cpe_mtmr']['customize']['buttons']['previous'] = {
  'type': 'previous',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

# Volume down button
default['cpe_mtmr']['customize']['buttons']['volumeDown'] = {
  'type': 'volumeDown',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

# Volume up button
default['cpe_mtmr']['customize']['buttons']['volumeUp'] = {
  'type': 'volumeUp',
  'order_index': nil,
  'align': 'left',
  'width': 50
}

#### Default Plugin Configuration
# Battery health display plugin
default['cpe_mtmr']['customize']['buttons']['battery'] = {
  'type': 'battery',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50,
  'refreshInterval': 60
}

# Currency conversion plugin
default['cpe_mtmr']['customize']['buttons']['currency'] = {
  'type': 'currency',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50,
  'refreshInterval': 600,
  'from': 'BTC',
  'to': 'USD',
  'full': true
}

# Mini-Dock display plugin
default['cpe_mtmr']['customize']['buttons']['dock'] = {
  'type': 'dock',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50,
  'autoResize': true
}

# Do not disturb plugin
default['cpe_mtmr']['customize']['buttons']['dnd'] = {
  'type': 'dnd',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50
}

# Music info display plugin
default['cpe_mtmr']['customize']['buttons']['music'] = {
  'type': 'music',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 80,
  'refreshInterval': 2
}

# Network interface info display plugin
# 'Flip' changes UI position of output and input traffic
default['cpe_mtmr']['customize']['buttons']['network'] = {
  'type': 'network',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50,
  'flip': true
}

# Pomodoro technique display plugin
# Time values in seconds
default['cpe_mtmr']['customize']['buttons']['pomodoro'] = {
  'type': 'pomodoro',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50,
  'workTime': 1200,
  'restTime': 600
}

# Time display plugin
default['cpe_mtmr']['customize']['buttons']['timeButton'] = {
  'type': 'timeButton',
  'formatTemplate': 'dd HH:mm',
  'timeZone': 'UTC',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50
}

# Weather display plugin
# Time values in seconds
default['cpe_mtmr']['customize']['buttons']['weather'] = {
  'type': 'weather',
  'refreshInterval': 600,
  'units': 'metric',
  'icon_type': 'text',
  'api_key': '',
  'order_index': nil,
  'align': 'left',
  'bordered': true,
  'width': 50
}
