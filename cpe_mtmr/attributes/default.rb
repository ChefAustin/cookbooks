# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Cookbook Name:: cpe_mtmr
# Attributes:: default
#

default['cpe_mtmr']['configure'] = true

default['cpe_mtmr']['preferences'] = {
  'escape' => {
    'enabled' => true,
    'type' => 'escape',
    'width' => 64,
    'align' => 'left'
  },
  'dnd' => {
    'enabled' => false,
    'type' => 'dnd',
    'align' => 'left'
  },
  'darkmode' => {
    'enabled' => false,
    'type' => 'darkMode',
    'align' => 'left'
  },
  'brightnesssdown' => {
    'enabled' => false,
    'type' => 'brightnessDown',
    'bordered' => false,
    'align' => 'left',
    'width' => 36
  },
  'brightness' => {
    'enabled' => true,
    'type' => 'brightness',
    'width' => 100,
    'align' => 'left',
    'image' => {
      'base64' => 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACAAQMAAAD58POIAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAGUExURffLOPfLNyaSVzUAAAACdFJOU/kBxOqnWgAAAbJJREFUSMfVljtyhDAQBVulQCFH4CgcDR1NR9ERFBKoeA5GfGddtkNvwFINFKP5tED22+Zxwviv6QVKfIEc/iNoF5gkpLIeYI8SUp4PsAUJiekADQntF6isQjvxCTrhAJlFqMMBeIH9BMsD7DAb2BhvYbIyNAOCZIWqYKGTpDZJFQu9EKVd44RxQRq3IrULWD62C8wSssWUZEsR0k6wcDOrJZmoBpMKI+s5qkBQCQOUJADVOECdOsDS0gDbsgHMfT4rVwHSrZQFIN5ABka8BgDgAeZ+BztBgvUEnSgVlhNsTFJjvoF5HAZorBpdYKAiSRbqNyBIUr6AjZMdPwO72R40MElS+wZUWA+wQ6LAYkFvdIhkmA+wQSDDdIAGAZ6A34H0x0fca11gBZZsIHSIfnE/5+NjCn/OuiuUB+/aunZwDeNayjXdTpDN0wlY+r1PfWu75nfj8RogN2JuCN2Y5qgMwTI0wGPUnQw6Qarx0sVNKA5Mn6VUL22lIbZoYitDbPmlvocc9Umfl2D7adz1reC3pF8av4m+DCenp/ndZuG3E7fhuC3pH2+vnz8V3MfE+bnxBTXuuIMTrLWHAAAAAElFTkSuQmCC'
    }
  },
  'brightnesssup' => {
    'enabled' => false,
    'type' => 'brightnessUp',
    'bordered' => false,
    'align' => 'left',
    'width' => 36
  },
  'nightshift' => {
    'enabled' => true,
    'type' => 'nightShift',
    'width' => 38,
    'align' => 'left'
  },
  'illuminationdown' => {
    'enabled' => false,
    'type' => 'illuminationDown',
    'bordered' => false,
    'align' => 'left',
    'width' => 36
  },
  'illuminationup' => {
    'enabled' => false,
    'type' => 'illuminationUp',
    'bordered' => false,
    'align' => 'left',
    'width' => 36
  },
  'volumedown' => {
    'enabled' => true,
    'type' => 'volumeDown',
    'bordered' => false,
    'align' => 'right',
    'width' => 36
  },
  'volume' => {
    'enabled' => true,
    'type' => 'volume',
    'width' => 100,
    'align' => 'right'
  },
  'volumeUp' => {
    'enabled' => true,
    'type' => 'volumeUp',
    'bordered' => false,
    'align' => 'right',
    'width' => 36
  },
  'mute' => {
    'enabled' => false,
    'type' => 'mute',
    'bordered' => false,
    'align' => 'right'
  },
  'input' => {
    'enabled' => false,
    'type' => 'inputsource',
    'align' => 'right'
  },
  'music' => {
    'enabled' => true,
    'type' => 'music',
    'align' => 'center',
    'width' => 800,
    'bordered' => false,
    'refreshInterval' => 2,
    'disableMarquee' => false
  },
  'network' => {
    'enabled' => false,
    'type' => 'network',
    'bordered' => false,
    'align' => 'center',
    'flip' => true
  },
  'pomodoro' => {
    'enabled' => false,
    'type' => 'pomodoro',
    'workTime' => 1200,
    'restTime' => 600,
    'align' => 'right'
  },
  'currency' => {
    'enabled' => false,
    'type' => 'currency',
    'refreshInterval' => 600,
    'align' => 'right',
    'from' => 'BTC',
    'to' => 'USD',
    'full' => true
  },
  'weather' => {
    'enabled' => true,
    'type' => 'weather',
    'width' => 64,
    'align' => 'right',
    'icon_type' => 'images',
    'bordered' => false,
    'api_key' => 'ca93a0bb8cdb428552660d83249e4bc9'
  },
  'timebutton' => {
    'enabled' => true,
    'type' => 'timeButton',
    'formatTemplate' => 'HH:mm',
    'width' => 64,
    'align' => 'right',
    'bordered' => false,
    'locale' => 'nl_NL',
    'timezone' => 'CET',
    #'longAction' => 'shellScript',
    #'longExecutablePath' => '/usr/bin/pmset',
    #'longShellArguments' => '["sleepnow"]'
  },
  'battery' => {
    'enabled' => true,
    'type' => 'battery',
    'width' => 64,
    'align' => 'right',
    'bordered' => false
  },
}
