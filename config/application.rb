require_relative 'boot'
 
require 'rails/all'


<<<<<<< HEAD
=======


>>>>>>> 0eab1c25ee186b4e2a0fb04408549381cc17e374
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RecipeTailor
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
config.active_record.observers = :comment_observer
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
