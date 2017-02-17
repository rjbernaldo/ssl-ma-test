require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ServerSample
  class Application < Rails::Application
    config.web_console.whitelisted_ips = '192.168.80.1'
    require 'my_claims_matcher.rb'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    # Rails::Auth::ConfigBuilder.application(config, matchers: { allow_x509_subject: Rails::Auth::X509::Matcher })
    # Rails::Auth::ConfigBuilder.application(config, matchers: { allow_claims: MyClaimsMatcher })
    # config.middleware.delete Rack::Sendfile
    # config.middleware.delete ActionDispatch::Static
    # config.middleware.delete Rack::Lock
    #config.middleware.delete Rack::Runtime
    # config.middleware.delete Rack::MethodOverride
    # config.middleware.delete ActionDispatch::RequestId
    # config.middleware.delete Rails::Rack::Logger
    # config.middleware.delete ActionDispatch::ShowExceptions
    # config.middleware.delete WebConsole::Middleware
    # config.middleware.delete ActionDispatch::DebugExceptions
    # config.middleware.delete ActionDispatch::RemoteIp
    # config.middleware.delete ActionDispatch::Reloader
    # config.middleware.delete ActionDispatch::Callbacks
    # config.middleware.delete ActiveRecord::Migration::CheckPending
    # config.middleware.delete ActiveRecord::ConnectionAdapters::ConnectionManagement
    # config.middleware.delete ActiveRecord::QueryCache
    # config.middleware.delete ActionDispatch::Cookies
    # config.middleware.delete ActionDispatch::Session::CookieStore
    # config.middleware.delete ActionDispatch::Flash
    # config.middleware.delete ActionDispatch::ParamsParser
    # config.middleware.delete Rack::Head
    # config.middleware.delete Rack::ConditionalGet
    # config.middleware.delete Rack::ETag    
    # Rails::Auth::ConfigBuilder.application(config)
  end
  
end
