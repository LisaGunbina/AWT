# Encoding: utf-8

# this is where you can define generic helper functions that are inhereted by
# the rest of your formulas
module Formulas
	class HomePage < Formula
		LOGIN_BUTTON = {css: '.login-action'}

		def initialize(driver) 
			super	
	      	visit
	      	verify_page
	    end

		def go_login_page
			click_on(LOGIN_BUTTON)
		end

	    private

	      def verify_page
	        title.include?('Farm management').should == true
	      end

	end
end
