require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TechlogApp
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.assets false # cssやjsファイルが無駄に生成されないようにする
      g.helper false # ヘルパーファイルが無駄に生成されないようにする
      g.test_framework :rspec # デフォルトでminitestなのでrspecに変更
    end
  end
end
