# Gemfile

# source: https://www.honeybadger.io/blog/building-a-sinatra-app-in-ruby/

source 'https://rubygems.org'

gem 'dotenv'
gem 'json'
gem 'pry'
gem 'rake'
gem 'sassc'
gem 'sinatra'
gem 'sinatra-activerecord'
gem 'sinatra-contrib'
gem 'sinatra-static-assets'

group :development do
  gem 'foreman'
  gem 'rubocop'
  gem 'sqlite3', '~> 1.3', '>= 1.3.11'
end

group :test do
  gem 'rack-test'
  gem 'rspec', require: 'spec'
end

group :production do
  gem 'pg'
  gem 'thin'
  gem 'puma'
  gem 'reel'
  gem 'http'
  gem 'webrick'
  gem 'falcon'
end
