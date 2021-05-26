source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2.3', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 5.3.2'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2'
# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.2.5", :require => ["redis", "redis/connection/hiredis"]
gem "hiredis"

gem "optimism", '>= 0.4.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.7.5', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-rails"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '>= 3.5.1'
end
