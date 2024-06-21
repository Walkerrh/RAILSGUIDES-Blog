# This file is used to specify the Ruby gems (libraries) that your application depends on.
# It is used by Bundler to manage your application's dependencies.

source "https://rubygems.org"

ruby "3.3.2"

# The rails gem is used to develop web applications using the Ruby on Rails framework.
# The version specified here is 7.1.3 or higher.
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# The sprockets-rails gem provides the original asset pipeline for Rails.
gem "sprockets-rails"

# The mysql2 gem is used to connect to a MySQL database.
gem "mysql2", "~> 0.5"

# The puma gem is a web server for Ruby applications.
gem "puma", ">= 5.0"

# The importmap-rails gem allows you to use JavaScript with ESM import maps.
gem "importmap-rails"

# The turbo-rails gem is Hotwire's SPA-like page accelerator.
gem "turbo-rails", "~> 1.0"

# The stimulus-rails gem is Hotwire's modest JavaScript framework.
gem "stimulus-rails"

# The jbuilder gem is used to build JSON APIs with ease.
gem "jbuilder"

# The jquery-rails gem provides jQuery and the jQuery-ujs driver for Rails.
gem 'jquery-rails'

# The turbolinks gem makes navigating your web application faster.
gem 'turbolinks'

# The tzinfo-data gem is used to handle time zones in Ruby.
# It is required for Windows and JRuby platforms.
gem "tzinfo-data", platforms: %i[ windows jruby ]

# The bootsnap gem reduces boot times through caching.
# It is required in config/boot.rb.
gem "bootsnap", require: false

group :development, :test do
  # The debug gem is used for debugging Rails applications.
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # The web-console gem provides a console on exceptions pages for development.
  gem "web-console"

  # The rack-mini-profiler gem adds speed badges to your application.
  # gem "rack-mini-profiler"

  # The spring gem speeds up commands on slow machines or big apps.
  # gem "spring"
end

group :test do
  # The capybara gem is used for system testing.
  gem "capybara"

  # The selenium-webdriver gem is used as a driver for Capybara.
  gem "selenium-webdriver"
end
