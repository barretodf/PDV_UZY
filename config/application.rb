require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module UzyRetail
  class Application < Rails::Application
    # Configurações aqui
    config.load_defaults 7.0  # ou sua versão
    config.session_store :cookie_store, key: '_uzyretail_session'
  end
end