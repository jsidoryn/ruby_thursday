require 'rails_helper'

feature "visiting the home page" do
	scenario "the visitor sees the company name" do
		visit root_path
		expect(page).to have_text("Better Than AirBnB")
	end
end
