require 'rspec/core'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require './helper/helper'
require_relative './Avant_Config.rb'
require_relative './assert_pages.rb'
require 'date'
require 'rspec/retry'
require 'rspec_junit_formatter'


#Capybara.ignore_hidden_elements = false

class AvantSignIn
  include AvantConfig
  include Helpers

  RSpec.configure do |c|
    c.include AvantConfig
    c.include Helpers
    c.output_stream = 'test-reports/specs_junit.xml'
    
    c.formatter = RspecJunitFormatter
  end

   begin
     describe "Signin to Avant ", :type => :feature do
        it "CLick on Signin for exisiting user", :retry => 1, :retry_wait => 5 do
          visit '/'
       
          page.driver.browser.manage.window.maximize
 
          click_sign_in
          assert_signin
          fill_in_exist_email('test321@yopmail.com')
          fill_in_password
          submit_login
          assert_edit_profile
          click_edit_profile
          assert_profile_page
          update_personal
          logout
          assert_home_page
          sleep 2          
        end
     end
   end
 end
