ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_relative '../app/controllers/application_controller'
require_relative '../app/models/team'
require_relative '../app/models/heros'

require 'capybara/dsl'