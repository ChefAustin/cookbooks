cpe_policy_banner Cookbook
=====================
Configures a `PolicyBanner` (`/Library/Security/PolicyBanner.rtfd`) on macOS nodes.

Requirements
------------
* macOS

Attributes
----------
**"Killswitch" Attributes:**
* node['cpe_policy_banner']['configure']
  - When set to `true`, this will make the cookbook set the `PolicyBanner` as defined in the cookbook's `attributes.rb` file.
* node['cpe_policy_banner']['remove']
  - When set to `true`, this will trigger the `:remove` action on any existing `PolicyBanner` configurations intact at run-time. This action is run prior to the `:configure` action.

**Customization Attributes:**
* node['cpe_policy_banner']['customize']['font_face']
  - The `font_face` attribute defines the font that will be used for all text in the entire `PolicyBanner`.
* node['cpe_policy_banner']['customize']['image_file']
  - Set this to the name of a `.png` file that exists in the `files` directory. This is the image that will bee displayed on the `PolicyBanner`. For sake of demonstrating its use, a default `chef.png` image has been placed in the cookbook and pre-defined in the `attributes.rb` file.
* node['cpe_policy_banner']['customize']['banner_message_1']
  - This is the first message that will be displayed in the `PolicyBanner`. The font size of this message can be defined with the `font_size_1` attribute.
* node['cpe_policy_banner']['customize']['font_size_1']
  - `font_size_1` will set the size of the font for the first block of text (defined in `banner_message_1`).
* node['cpe_policy_banner']['customize']['banner_message_2']
  - This is the second message that will be displayed in the `PolicyBanner`. The font size of this message can be defined with the `font_size_2` attribute.
* node['cpe_policy_banner']['customize']['font_size_2']
- `font_size_2` will set the size of the font for the first block of text (defined in `banner_message_2`).
* node['cpe_policy_banner']['customize']['banner_message_3']
  - This is the third, and final, message that will be displayed in the `PolicyBanner`. The font size of this message can be defined with the `font_size_3` attribute.
* node['cpe_policy_banner']['customize']['font_size_3']
- `font_size_3` will set the size of the font for the first block of text (defined in `banner_message_3`).


Usage
-----

Remove existing `PolicyBanner` configuration and set new configuration (as defined by `attrbiutes.rb`):
```
cpe_policy_banner 'Remove existing PolicyBanner' do
  only_if { node['cpe_policy_banner']['remove'] }
  action :remove
end

cpe_policy_banner 'Applying defined PolicyBanner' do
  only_if { node['cpe_policy_banner']['configure'] }
  action :configure
end
```

Remove existing `PolicyBanner` configuration:
```
cpe_policy_banner 'Remove existing PolicyBanner' do
  only_if { node['cpe_policy_banner']['remove'] }
  action :remove
end
```
