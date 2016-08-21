FactoryGirl.define do
	factory :member do
		name Faker::Name.name
		email Faker::Internet.email
		password Devise.friendly_token.first(8)
	end
end
