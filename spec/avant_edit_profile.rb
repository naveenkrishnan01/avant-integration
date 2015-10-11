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
require_relative '../avant_sign_in.rb'

#Capybara.ignore_hidden_elements = false

class AvantEditProfile < AvantSignIn
  include AvantConfig
  include Helpers

  RSpec.configure do |c|
    c.include AvantConfig
    c.include Helpers
    c.output_stream = 'test-reports/specs_junit.xml'
    
    c.formatter = RspecJunitFormatter
  end

   begin
     describe "Edit prfile ", :type => :feature do
        it "Update personal button", :retry => 1, :retry_wait => 5 do
          a = AvantEditProfile.new 
          sleep 2          
        end
     end
   end
 end
