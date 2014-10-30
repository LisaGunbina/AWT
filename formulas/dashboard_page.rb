module Formulas
	class DashboardPage < Formula
		include ChemistryKit::Formula::ChemistAware

		HOME_LINK = {xpath: '//a["Home"]'}
		DRAW_BUTTON = {xpath: '//a["Draw Your First Paddock Now"]'}
		
		def initialize(driver) 
			super	
	      	visit
	      	verify_page
	    end

		def draw_paddock
			click_on DRAW_BUTTON
		end
		
		def visit
			LoginPage.new(driver).login
		end
			
	    private

	      def verify_page
	       	displayed?(HOME_LINK).should == true
	      end

	end
end