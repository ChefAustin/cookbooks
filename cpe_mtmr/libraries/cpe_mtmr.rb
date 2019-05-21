#
# Cookbook Name:: cpe_mtmr
# Libraries:: cpe_mtmr
#
# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
#

module CPE
  # Helper methods for template genereation
  class Mtmr
    def enabled_buttons
      node['cpe_mtmr']['customize']['buttons'].reject { |_k, v| v.nil? }
    end

    def enabled_button_config
      json_config = []
      enabled_buttons.keys.each do |eb|
        json_config <<
          node['cpe_mtmr']['customize']['buttons_config'][eb.to_s]
      end
      json_config
    end
  end
end
