
source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma'

gem 'jbuilder', github: 'rails/jbuilder'

gem 'rack-cache'

gem 'rails_12factor'

# For rate limiting and banning
gem 'rack-attack'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem "rails-controller-testing", :git => "https://github.com/rails/rails-controller-testing"
  gem 'rspec', '~> 3.5.0.beta1'
  gem 'rspec-core', '~> 3.5.0.beta1'
  gem 'rspec-rails', '~> 3.5.0.beta1'
  gem 'guard-rspec', '~> 4.6', require: false

  gem 'byebug'
  gem 'railroady'
  gem 'awesome_print'
  gem 'hirb'
  gem 'annotate'
  gem 'seed_dump'

end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby "2.3.0"
