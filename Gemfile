source 'https://rubygems.org'

ruby '2.1.3'
gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do 
  gem 'sqlite3'
  gem 'jasmine'
  gem 'bullet'
  gem 'capybara'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'cucumber-rails-training-wheels'
  gem 'factory_girl_rails'
  gem 'mailcatcher'
end
group :production do 
  gem 'pg'
end
gem 'thin'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end
gem 'haml'
gem 'jquery-rails'
gem 'devise'
gem 'event-calendar', :require => 'event_calendar'
gem 'jquery-ui-rails'
gem 'jquery-timepicker-rails'
gem 'bootstrap-sass'
group :test do
  gem 'cucumber-rails', :require => false
  gem 'email_spec'
end

