# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Server/Rack/Engine
gem 'puma'
gem 'rails', '6.0.3.6'

# DB
gem 'mysql2'

# Webpack for rails
gem 'webpacker', '~> 5.2'

# i18n
gem 'rails-i18n', '~> 6.0.0'

gem 'bootsnap', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
end

group :test do
  gem 'rspec_junit_formatter'
  gem 'simplecov', '~> 0.21', require: false
end
