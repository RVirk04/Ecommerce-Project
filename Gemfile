source 'https://rubygems.org'

ruby "2.7.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# The most popular HTML, CSS, and JavaScript framework for developing responsive,
# mobile first projects on the web. http://getbootstrap.com [https://github.com/twbs/bootstrap-rubygem]
# gem 'bootstrap', '~> 5.1', '>= 5.1.3'

# bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications [https://github.com/twbs/bootstrap-sass]
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

# Use Sass to process CSS
gem "sassc-rails"

#
gem 'faker', '~> 1.8', '>= 1.8.7'

# Sass adapter for the Rails asset pipeline [https://github.com/rails/sass-rails]
gem 'sass-rails', '>= 3.2'

# Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website [https://github.com/ai/autoprefixer-rails]
gem 'autoprefixer-rails', '~> 10.4', '>= 10.4.2.0'

# This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application [https://github.com/rails/jquery-rails]
gem 'jquery-rails', '~> 4.4'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Uglifier minifies JavaScript files by wrapping UglifyJS to be accessible in Ruby [https://github.com/lautis/uglifier]
gem 'uglifier', '~> 4.2'

# CoffeeScript adapter for the Rails asset pipeline [https://github.com/rails/coffee-rails]
gem 'coffee-rails', '~> 5.0'

# Rails engine for Turbolinks 5 support [https://github.com/turbolinks/turbolinks]
gem 'turbolinks', '~> 5.2', '>= 5.2.1'

# A modern CSS framework based on Flexbox [https://github.com/joshuajansen/bulma-rails]
gem 'bulma-rails', '~> 0.0.4.1'

# Forms made easy! [https://github.com/heartcombo/simple_form]
gem 'simple_form', '~> 5.1'

# Flexible authentication solution for Rails with Warden [https://github.com/heartcombo/devise]
gem 'devise', '~> 4.8', '>= 4.8.1'

# A configurable and documented Rails view helper for adding gravatars into your Rails application [https://github.com/mdeering/gravatar_image_tag]
gem 'gravatar_image_tag', '~> 1.2'

# Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends [https://github.com/carrierwaveuploader/carrierwave]
gem 'carrierwave', '~> 2.2', '>= 2.2.2'

# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick [https://github.com/minimagick/minimagick]
gem 'mini_magick', '~> 4.11'

#
gem 'fog-aws'

#
gem 'nokogiri'

#
gem 'will_paginate'

#
gem 'will_paginate-bootstrap'

#
gem 'email_validator'

#
gem 'figaro'

#
gem 'nicescroll-rails'

#
gem 'country_select'

#
gem 'ransack'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  # gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Capybara is an integration testing tool for rack based web applications.
  # It simulates how a user would interact with a website [https://github.com/teamcapybara/capybara]
  gem "capybara"

  # Selenium implements the W3C WebDriver protocol to automate popular browsers. It aims to mimic the behaviour of a
  # real user as it interacts with the application's HTML. It's primarily intended for web application testing,
  # but any web-based task can automated.
  gem "selenium-webdriver"

  # Run Selenium tests more easily with install and updates for all supported webdrivers [https://github.com/titusfortner/webdrivers]
  gem "webdrivers"

  # Provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and
  # local/instance variable inspection for all stack frames [https://github.com/BetterErrors/better_errors]
  gem 'better_errors', '~> 2.9', '>= 2.9.1'

  # Guard is a command line tool to easily handle events on file system modifications.
  gem 'guard', '~> 2.18'

  # Guard::LiveReload automatically reloads your browser when 'view' files are modified.
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # The Listen gem listens to file modifications and notifies you about the changes [https://github.com/guard/listen]
  gem 'listen', '~> 3.7', '>= 3.7.1'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"

  # Makes spring watch files using the listen gem [https://github.com/rails/spring-watcher-listen]
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'

  #
  gem 'rubocop'
  gem 'rubocop-rails'
end

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard-minitest'
  gem 'minitest'
end

group :production do
  gem 'pg'
end
