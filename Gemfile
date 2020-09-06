# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Use bootstrap for CSS/SASS styling
gem 'bootstrap', '~> 4.4', '>= 4.4.1'
# Use .env for environment variables
gem 'dotenv', '~> 2.7', '>= 2.7.5'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails'
# Use money-rails for currency
gem 'money-rails', '~> 1.13', '>= 1.13.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'
# Use I18n for internationalization
gem 'rails-i18n', '~> 6.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'sass-rails', '>= 6'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# For user model
gem 'devise'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.29'
  gem 'factory_bot_rails', '~> 6.1'
  # webdriver for capybara
  gem 'rails-controller-testing'
  # Use beta of rspec-rails to fix bug in controller specs
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'rubocop', '~> 0.77.0'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 3.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Reports for CI
  gem 'rspec_junit_formatter'
end
