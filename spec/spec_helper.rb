# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RACK_ENV"] ||= "test"

require "bundler/setup"
require "rack/test"

require_relative "../lib/redirect"

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.order = "random"

  def app
    Redirect.new
  end
end
