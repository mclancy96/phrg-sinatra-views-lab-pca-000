source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.5'

gem 'rails', '~> 7.0.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'logger'

group :development, :test do
  gem 'rspec-rails', '~> 5.0.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'rspec-json_expectations'
end
