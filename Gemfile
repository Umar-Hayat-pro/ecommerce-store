source "https://rubygems.org"

gem "rails", "~> 8.0.1"
gem "propshaft"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

# Development and testing
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request" # For Rails Panel
  gem "web-console" # Interactive console on error pages
  gem "pry-rails" # Enhanced Rails console
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "devise", "~> 4.9"
gem "rspec-rails", "~> 6.0" # Update RSpec gem to the latest
gem "dartsass-rails"
gem "bootstrap", "~> 5.3.3"

gem "cancancan", "~> 3.6"

gem "active_storage_validations", "~> 2.0"

gem "inline_svg", "~> 1.10"
