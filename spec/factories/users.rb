# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	first_name "Annie"
  	last_name	"Anne"
  	sequence(:email) {|n| "annie#{n}@example.com"}
  	password "whoisannie"
  end
end
