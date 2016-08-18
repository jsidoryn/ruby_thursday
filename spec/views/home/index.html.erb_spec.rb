require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
	it "displays the sitename" do
		render
		expect(rendered).to have_text("Better Than AirBnB")
	end
end
