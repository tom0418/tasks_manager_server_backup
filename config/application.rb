# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'

Bundler.require(*Rails.groups)

module TasksManagerServer
  class Application < Rails::Application
    config.load_defaults 6.0
    config.add_autoload_paths_to_load_path = false

    config.api_only = true

    # Set Timezone
    config.time_zone = 'Tokyo'

    # Set i18n default locale
    # rails-i18nを入れたらコメントイン
    # config.i18n.default_locale = :ja

    # Generate test framework
    config.generators do |g|
      g.test_framework(:rspec,
                       view_specs: false,
                       helper_specs: false,
                       controller_specs: false,
                       routing_specs: false)
      g.fixture_replacement(:factory_bot, dir: 'spec/factories')
    end
  end
end
