source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# C
gem 'coffee-rails', '~> 4.2'
gem 'carrierwave'
#  D
gem 'bootsnap', require: false
gem 'devise' # https://qiita.com/cigalecigales/items/73d7bd7ec59a001ccd74
gem 'dotenv-rails', groups: [:development, :test]
#  G
gem 'google-api-client', '~> 0.11'
#  J
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
# K
gem 'kaminari'
# M
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'mini_magick'
# U
gem 'uglifier', '>= 1.3bu.0'
# T
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# S
gem 'sass-rails', '~> 5.0'
# R
gem 'rails', '~> 5.2.0'
# P
gem 'pry-byebug'
gem 'puma', '~> 3.11'
# W
gem 'whenever', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
end

group :development do
  gem 'rubocop', require: false # https://blog-ja.sideci.com/entry/2015/03/12/160441
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
