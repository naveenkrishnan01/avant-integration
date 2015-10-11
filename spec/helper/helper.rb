require '../Avant_Config'
#require_relative 'LoanPortalConfig'
require 'spreadsheet'

module AvantConfig
  module Helpers


    def get_time
      unix_time = (Time.now.to_i - 13503).to_s
      return unix_time
    end

    def click_signup
      click_link('Sign Up')
    end

    def click_sign_in
      click_link('Sign In')
    end
   
    def click_edit_profile
      click_link('Edit Profile')
    end

    def fill_in_exist_email(email)
       @email = email
       find(:id, 'user_email').set @email
    end 

    def fill_in_email
      o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
      string = (0...10).map { o[rand(o.length)] }.join
      @email = "qa" + "avant"+ string+"@yopmail.com"
      find(:id, 'user_email').set @email
     end


    def fill_in_password
      find(:id, 'user_password').set 'hello123' 
    end

    def fill_in_password_confirm
      find(:id, 'user_password_confirmation').set 'hello123'
    end 

    def submit_signup
      click_button('Sign up')
    end

    def update_personal
      click_button('Update Personal')
    end

    def submit_login
      click_button('Log in')
    end

    def logout
       click_link('Sign out')
    end 
  
  end
end
