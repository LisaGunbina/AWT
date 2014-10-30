module Formulas
	class LoginPage < Formula
		include ChemistryKit::Formula::ChemistAware

		EMIAL_FIELD = {id: 'user_session_email'}
		PASSWORD_FIELD = {id: 'user_session_password'}
		SUBMIT_BUTTON = {css: 'button[type="submit"]'}
		ERROR_MESSAGE = {id: 'error'}
		SIGN_IN_MESSAGE = {xpath: '//legend["Sign in to Agworld"]'}

	def initialize(driver)
		super
		visit
		verify_page
	end

	def login
		type EMIAL_FIELD, chemist.email
		type PASSWORD_FIELD, chemist.password
		click_on SUBMIT_BUTTON		
	end

	def error?
		 !text_of(ERROR_MESSAGE).empty?
	end

	def visit		
		HomePage.new(@driver).go_login_page
	end	

	private

		def verify_page
			displayed?(SIGN_IN_MESSAGE).should == true
		end
	end
end		