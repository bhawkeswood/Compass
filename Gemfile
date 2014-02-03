source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'pg' # replacing SQLite w/ PostgreSQL
gem 'sorcery'

gem 'simple_form'

gem "cocoon"

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'


gem 'sass-rails'
gem 'bootstrap-sass'
gem 'bootswatch-rails'

group :assets do 
# Use SCSS for stylesheets


	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'

	# Use CoffeeScript for .js.coffee assets and views
	gem 'coffee-rails', '~> 4.0.0'
end
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'jquery-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :tools do
  gem 'guard-rspec' # automatically runs our tests whenever there have been changes made to them
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development
gem 'ransack'
# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'rspec-rails', '~> 2.0' # using rspec instead of test unit
  gem 'better_errors' # makes the errors we see in the browser more descriptive
  gem "binding_of_caller"
  gem 'pry-rails'
  gem "factory_girl_rails" 
  gem "capybara" # needed for our integration tests, which we'll talk about more later
  gem 'selenium-webdriver'
  gem 'database_cleaner'
end
