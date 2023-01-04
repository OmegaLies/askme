source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "bcrypt"
gem "bootsnap", require: false
gem "dotenv-rails"
gem "font-awesome-rails"
gem "importmap-rails"
gem "jbuilder"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "sqlite3", "~> 1.4"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem "pg"
end
