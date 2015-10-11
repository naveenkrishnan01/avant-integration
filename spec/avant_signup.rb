require 'rspec/core'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require './helper/helper'
require_relative '../Avant_Config.rb'
require_relative '../assert_pages.rb'
require 'date'
require 'rspec/retry'
require 'rspec_junit_formatter'


#Capybara.ignore_hidden_elements = false

class DscAvant
  include AvantConfig
  include Helpers

  RSpec.configure do |c|
    c.include AvantConfig
    c.include Helpers
    c.output_stream = 'test-reports/specs_junit.xml'
    
    c.formatter = RspecJunitFormatter
  end

   begin
     describe "Signup to Avant ", :type => :feature do
        it "CLick on Signup and fill in form", :retry => 1, :retry_wait => 5 do
          visit '/'
       
          page.driver.browser.manage.window.maximize
 
          click_signup
          assert_signup 
          fill_in_email
          fill_in_password
          fill_in_password_confirm
          submit_signup
          assert_edit_profile
          sleep 5
        end
     end
   end
 end
