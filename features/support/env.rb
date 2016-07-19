require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.app_host = "http://obscure-earth-39557.herokuapp.com/"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end