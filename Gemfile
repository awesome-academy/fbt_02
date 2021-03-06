source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.1"

gem "bcrypt-ruby"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap-sass", "3.3.7"
gem "bootstrap-will_paginate", "1.0.0"
gem "cancancan", "~> 2.3"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "devise"
gem "faker", "1.7.3"
gem "font-awesome-sass", "~> 4.7.0"
gem "jbuilder", "~> 2.5"
gem "jquery-rails", "~>4.3.3"
gem "jquery-ui-rails"
gem "magnific-popup-rails", "~> 1.1.0"
gem "mysql2"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.2"
gem "rails_admin", "~> 1.2"
gem "ransack", github: "activerecord-hackery/ransack"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5.2.0"
gem "uglifier", ">= 1.3.0"
gem "will_paginate", "3.1.6"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "0.18.4"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
