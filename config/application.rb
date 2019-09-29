require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Brandfunding
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Asia/Tokyo'

    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
  end
end
