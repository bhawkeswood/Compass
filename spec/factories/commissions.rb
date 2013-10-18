# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :commission do
  	installment "1"
  	amount "15000"
  	commission_date "December 15, 2016"
  	done "False"
  end
end
