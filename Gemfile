# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/sa-mcquanzie/diary" }

ruby '3.0.2'

gem 'pg'
gem 'sinatra'
gem 'sinatra-contrib'

group :test do
  gem 'capybara'
  gem 'rack_session_access'
  gem 'rspec'
  gem 'rubocop', '0.79.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
