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
        it "Remove one product", :retry => 1, :retry_wait => 5 do
          visit '/'
       
          page.driver.browser.manage.window.maximize
 
          click_box
          assert_box

          add_items

         # assert_shave
          click_style
          sleep 2;
          visit 'https://www.dollarshaveclub.com/our-products/style/hair-gel'
          click_add_button
          click_ok_button 
          sleep 2;          
          visit 'https://www.dollarshaveclub.com/our-products/style/hair-pomade'
          click_add_button
          click_ok_button
          sleep 2;
          assert_total(num="2")
          page.execute_script("$('.tertiary')[0].click()")
          expect(page).to have_content "How many do you need?"
          page.execute_script("$('.ember-view .has-action')[0].click()")
          sleep 2;
          click_button('Remove')
          expect(page).to have_content "FIRST BOX"
          assert_total(num="1")
      end
     end
   end
 end
