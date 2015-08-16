require 'rspec/core'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require './helper/helper'
require_relative '../Dsc_Config.rb'
require_relative '../assert_pages.rb'
require 'spreadsheet'
#require '../dsc/raw_excel.rb'
require 'date'
require 'rspec/retry'
require 'rspec_junit_formatter'


#Capybara.ignore_hidden_elements = false

class DscApp
  include DscConfig
  include Helpers

  RSpec.configure do |c|
    c.include DscConfig
    c.include Helpers
    c.output_stream = 'test-reports/specs_junit.xml'
    
    c.formatter = RspecJunitFormatter
  end

   begin
     describe "Dollar shave club product", :type => :feature do
        it "Add two new product", :retry => 1, :retry_wait => 5 do
          visit '/'
       
          page.driver.browser.manage.window.maximize
 
          click_box
          assert_box

          add_items

          assert_shave
          shave 

          visit 'https://www.dollarshaveclub.com/our-products/shave/shave-butter'
          click_add_button
          click_ok_button 
          sleep 2;          
          visit 'https://www.dollarshaveclub.com/our-products/shave/shave-butter-travel'
          click_add_button
          click_ok_button
          sleep 2;
          assert_total(num="2") 
        end
     end
   end
 end
