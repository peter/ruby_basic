# Here is a sample Gemfile that specifies library dependencies for a Ruby on Rails
# application:

unless $0 == __FILE__
  # This code goes in Gemfile in the root of yoru project
  source 'http://rubygems.org'

  gem 'rake', '~> 0.9'

  gem 'rails', '3.0.7'
  gem 'pg', '0.10.0'

  gem 'delayed_job', '2.1.4'

  gem 'dalli' # Memcache (http://devcenter.heroku.com/articles/memcache)

  gem 'aws', '~> 2.5'

  gem 'rest-client', '~> 1.6'
  gem 'json_pure', '~> 1.4.6'
end
