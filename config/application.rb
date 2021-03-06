require File.expand_path('../boot', __FILE__)

require 'rails/all'

#instagram keys
INSTAGRAM_CLIENT_ID = ENV['INSTAGRAM_CLIENT_ID']
INSTAGRAM_TOKEN = ENV['INSTAGRAM_TOKEN']
INSTAGRAM_UID = ENV['INSTAGRAM_UID']

#stripe keys
PUBLISHABLE_KEY = "pk_test_4ZtfsJSXfL5yQ0puXYwTN70j"
SECRET_KEY = "sk_test_4ZtflpPasQlDGkijIp7YW4x8"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InstagramShop
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
