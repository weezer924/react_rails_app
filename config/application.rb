require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReactRailsTweet
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.api_only = true
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:3000'
        resource '*',
          headers: :any,
          methods: [:get, :post, :patch, :delete, :options]
      end
    end
  end
end