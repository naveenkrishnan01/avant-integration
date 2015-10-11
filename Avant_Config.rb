require 'capybara/rspec'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'rspec/retry'

module AvantConfig

BASE_URL = 'https://avant-qa-screening.herokuapp.com/'
MAX_RESPONSE_TIME = 15 # in seconds
Capybara.default_driver = :selenium
Capybara.default_wait_time = 15
Capybara.default_selector = :css
Capybara.app_host = BASE_URL
Capybara::Screenshot.autosave_on_failure = true
Capybara.save_and_open_page_path = 'test-reports/'

#  Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end
end


