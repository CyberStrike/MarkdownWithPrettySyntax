source 'https://rubygems.org'

### Libraries
gem 'rails', '4.1.1' # Rails
gem 'jbuilder', '~> 2.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin] # Windows Ruby-Core Dependency

gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc

### Assets

gem 'bootstrap-sass' # Pull yourself up by your
gem 'autoprefixer-rails' # Browser Vendor
gem 'slim-rails' # Lose some weight
gem 'sass-rails', '~> 4.0.3' # Use SCSS for stylesheets
gem 'coffee-rails', '~> 4.0.0' # CoffeeScript
gem 'jquery-rails' # jQuery

## Markdown
gem 'nokogiri'
gem 'redcarpet' #Markdown

group :development do
  gem 'thin' # Light Web Server
  gem 'sqlite3' # SQLite3 Database
  gem 'better_errors' # Debuggers
  gem 'binding_of_caller'
end

group :production do
  ### Dependencies
  gem 'pg' # Postgres Database
  # gem 'unicorn' # Use unicorn as the app server
  gem 'therubyracer',  platforms: :ruby

  ### Assets
  gem 'rails_12factor' # Heroku Asset/Permissions Handler
  gem 'uglifier', '>= 1.3.0' # JS-Min
end