module Formulas
	class DashboardPage < Formula
		include ChemistryKit::Formula::ChemistAware

		HOME_LINK = {xpath: '//a["Home"]'}
		DRAW_BUTTON = {xpath: '//a["Draw Your First Paddock Now"]'}

		#Override chemist setter method to get the data file 
		def chemist=(value)
			@chemist = value
			# Get the data file from user profile
			catalyze (@chemist.data_file)
			# Check that the parameters are taken from catalyst file
			puts catalyst.some_key
		end
		
		def initialize(driver) 
			super	
	      	visit
	      	verify_page
	    end

		def draw_paddock
			click_on DRAW_BUTTON
		end
		
		def visit
			login = LoginPage.new(driver)
			logon.chemist = @chemist
			login.login
		end
			
	    private

	      def verify_page
	       	displayed?(HOME_LINK).should == true
	      end
	end
end