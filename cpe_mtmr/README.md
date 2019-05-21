cpe_mtmr Cookbook
=====================
Installs and configures `MTMR.app` (`/Users/austin.culter/Library/Application Support/MTMR/items.json`) on macOS nodes.

Requirements
------------
* macOS

Attributes
----------
Do note that all attributes are best set to `nil` and then configured within a `cpe_init` recipe rather than as you see them currently. If this statement is confusing, you likely need to read through the `README.md` from the Facebook repo.


**"Killswitch" Attributes:**
* `node['cpe_mtmr']['install']`
  - When set to `true`, `MTMR.app` will be installed on the node.
* `node['cpe_mtmr']['uninstall']`
  - When set to `true`, `MTMR.app` will be uninstalled (assumes existence at `/Applications/MTMR.app`).
* `node['cpe_mtmr']['configure']`
  - When set to `true`, this will make the cookbook set the MTMR configuration as defined in the cookbook's `attributes.rb` file.
* `node['cpe_mtmr']['remove']`
  - When set to `true`, this will trigger the `:remove` action on any existing MTMR configurations intact at run-time. This action is run prior to the `:configure` action.

**Customization Attributes:**
* `node['cpe_mtmr']['installation']['version']``
  - Defines the version to be installed (if `node['cpe_mtmr']['install']` is set to true).
* `node['cpe_mtmr']['installation']['destination']``
  - Sets the destination path where `MTMR.app` will be placed

Usage
-----

Notes
-----
As denoted in the [MTMR `README.md`](https://github.com/Toxblh/MTMR#installation), you must whitelist `MTMR.app` in SysPrefs > Security & Privacy > Privacy > Accessibility:

```
First open: you should allow access for MTMR in Accessibility for correct buttons work like Esc Volume/Brightness and another system keys
```

https://github.com/Toxblh/MTMR

TODO
-----
1. Account for "LongActions"
2. Test suite
