require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Dotenv::Railtie.load

module ZomatoApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.stripe_publishable_key = "pk_test_51Nt7AiSH9YUmBAon7pUfkMU35JCKVyW45rs65kxwPhtLqnZqbbMKqaKuIrUZNZU6p93XaMFC0380ZzLtEWN5MhvR00oqRfleFf"
    config.stripe_secret_key = "sk_test_51Nt7AiSH9YUmBAonNnHxyy8O1P3ZBiBwh8bQGcUtasqUT3BA9ENUGDZHdQHt4FclVryytBhWMuERk70ql7EoZDMy00wJQ2FZjb"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
