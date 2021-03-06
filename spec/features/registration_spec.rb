require 'rails_helper'

feature "member registers for site" do
	scenario "host registers for the site" do
		visit root_path
		click_link "Become a host"
		fill_in_registration_fields
		expect(page).to have_content("Welcome! You have signed up successfully")
	end

	def fill_in_registration_fields	
		fill_in "member[name]", with: Faker::Name.name
		fill_in "member[email]", with: Faker::Internet.email
		fill_in "member[password]", with: Devise.friendly_token.first(8)
		click_button "Sign up"
	end
end
