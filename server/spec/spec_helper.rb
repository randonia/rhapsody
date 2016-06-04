require 'database_cleaner'
require 'rack/test'
require 'rspec'
require 'pry'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../server.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app
    @app = MyApp
  end
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include RSpecMixin

  # Before the entire test suite
  conf.before(:suite) do
  end

  # Before each test
  conf.before(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  # After each test
  conf.after(:each) do
    DatabaseCleaner.clean
  end

  # After the entire test suite
  conf.after(:suite) do
  end
end
