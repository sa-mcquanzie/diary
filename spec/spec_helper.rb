require 'capybara'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'rack_session_access'
require 'rack_session_access/capybara'
require './spec/web_helpers.rb'

ENV['RACK_ENV'] = 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::HTMLFormatter
])

SimpleCov.start

require_relative "../app.rb"

Capybara.app = Diary

Diary.configure do |app|
  app.use RackSessionAccess::Middleware
end
