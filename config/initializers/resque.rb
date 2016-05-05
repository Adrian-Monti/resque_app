# config/initializers/resque.rb
require 'resque'

rails_env = ENV['RAILS_ENV'] || 'development'
config = YAML.load( ERB.new(File.read(Rails.root.join('config', 'resque.yml'))).result )

Resque.redis = config[rails_env]