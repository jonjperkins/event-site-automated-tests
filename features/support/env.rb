require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.example.com"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end