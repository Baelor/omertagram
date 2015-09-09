source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use mysql2 as the production database for Active Record
gem 'mysql2', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'sqlite3'

  # keep secrets in .env
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # use rubocop to enforce code style best practices
  gem 'rubocop', require: false

  # find query optimizations with bullet
  gem 'bullet', '~> 4.14.7'

  # annotate models with table structure
  gem 'annotate', '~> 2.6.10'

  # show outgoing mail in the browser
  gem 'letter_opener'
end

# use omerta_logger to fetch API updates
gem 'omerta_logger', git: "git@github.com:Baelor/omerta_logger.git"

# use telegram-bot-ruby to access the telegram bot API
gem 'telegram-bot-ruby', '~> 0.2.6'

# use config to manage app configuration
gem 'config'


gem 'bootstrap-sass', '~> 3.3.5'

gem 'devise', '~> 3.5.2'
gem 'devise-bootstrap-views', '~> 0.0.5'

# static pages
gem 'high_voltage', '~> 2.4.0'
