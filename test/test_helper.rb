# -*- encoding : utf-8 -*-
ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

#############################################################################################
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'active_support/core_ext/kernel/reporting'

Dir['test/support/**/*.rb'].each do |file|
  # strip ^test/ and .rb$
  file = file[5..-4]
  require_relative File.join('.', file)
end

GEM_PATH = File.expand_path('../', File.dirname(__FILE__))

#= Capybara + Poltergeist
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(
      app,
      # inspector:   '/Applications/Chromium.app/Contents/MacOS/Chromium', # open in inspector: page.driver.debug
      window_size: [1280, 1024],
      timeout: 90,
      js_errors: true
  )
end

Capybara.configure do |config|
  config.app_host = 'http://localhost:7000'
  config.default_driver    = :poltergeist
  config.javascript_driver = :poltergeist
  config.server_port       = 7000
  config.default_max_wait_time = 10
end