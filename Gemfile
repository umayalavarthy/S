source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'mysql2'
gem 'execjs'
gem 'therubyracer'
gem 'devise'
gem 'selections'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end



gem 'pg'


platforms :jruby do
  gem 'trinidad'
  gem 'jruby-openssl'
end

gem 'thin'

gem 'less-rails'
gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
group :assets do
  gem 'twitter-bootstrap-rails'
end
group :test, :development do
  #TODO point this back to default gem once bug is gone - https://github.com/rspec/rspec-expectations/commit/f4efada6c86b840802a18e3de12ea68279f9030f
  gem "rspec-rails", :git => "https://github.com/rspec/rspec-rails.git"
  gem "rspec-expectations", :git => "https://github.com/rspec/rspec-expectations.git"
  gem "shoulda-matchers"
  gem "factory_girl_rails"
  gem "faker"
  gem "capybara"
  gem "database_cleaner"
  gem "spork"
  gem "hirb"
  gem "awesome_print"
end
