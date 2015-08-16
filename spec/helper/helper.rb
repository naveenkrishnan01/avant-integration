require '../Dsc_Config'
#require_relative 'LoanPortalConfig'
require 'spreadsheet'

module DscConfig
  module Helpers


    def get_time
      unix_time = (Time.now.to_i - 13503).to_s
      return unix_time
    end

    def click_box
      find(:css, '.box-indicator').click
    end

    def add_items
      click_link('Add Some Stuff')
     # find(:css, ".secondary-cta ember-view").click
     end

    def shave
      click_link('Shave')
    end

    def add_item_1
      click_link('Bold Hair Gel')
    end

    def click_style
      click_link('Style')
    end

    def click_add_first_button
      first(:link, 'add').click
    end

    def click_add_button
      click_button('Add')
    end

    def click_ok_button
      click_button('OK')
    end       
  
  end
end
