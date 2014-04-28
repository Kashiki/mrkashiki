FactoryGirl.define do 
	factory :user
		name "JJ"
		email "jj@example.com"
		password "fubar"
		password.confirmation "fubar"
end