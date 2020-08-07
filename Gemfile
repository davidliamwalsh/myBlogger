source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3.1'
# Use SCSSC for stylesheets
gem 'sassc-rails', '~> 2.1', '>= 2.1.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bootstrap', '~> 4.5'
gem 'bootswatch'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'bootstrap4-kaminari-views', '~> 1.0', '>= 1.0.1'
gem 'nokogiri', '~> 1.10', '>= 1.10.7'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'gibbon', '~> 3.2'
gem 'sidekiq', '6.0.3'
gem 'omniauth', '~> 1.6.1'
gem 'omniauth-auth0', '~> 2.0.0'
gem 'dalli', '~> 2.7', '>= 2.7.10'
gem 'redcarpet', '~> 3.4'
gem 'mini_magick', '~> 4.9', '>= 4.9.3'
gem 'image_processing', '~> 1.2'
gem 'aws-sdk-s3', require: false
gem 'listen', '~> 3.1', '>= 3.1.5'
gem 'graphql', '~> 1.9', '>= 1.9.8'
gem 'rack-cors', '~> 1.0', '>= 1.0.3'
gem 'rack-throttle', '~> 0.7.0'
gem 'friendly_id', '~> 5.2', '>= 5.2.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'capybara', '~> 3.13', '>= 3.13.2'
  gem 'selenium-webdriver', '~> 3.141'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'faker', '~> 1.9', '>= 1.9.3'
  gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
  gem 'oj', '~> 3.7', '>= 3.7.12'
  gem 'webdrivers', '~> 4.0'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'webmock', '~> 3.5', '>= 3.5.1'
  gem 'rspec-sidekiq', '~> 3.0', '>= 3.0.3'
  gem 'rack_session_access', '~> 0.2.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'foreman', '~> 0.86.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'graphiql-rails', group: :development