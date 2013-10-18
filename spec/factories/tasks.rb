# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
  	description "Trade record"
  	due_date "October 17, 2013"
  	done "False"
  end
end
