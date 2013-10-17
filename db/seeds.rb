# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Deal.destroy_all

user = User.create! (first_name: "Jane", last_name: "Doe", email: "jane@example.com", password: "password")

10.times do |i|
	deal1 = user.deals.create!(project_name: "Project Name #{i}", developer: "Developer #{i}", unit_number: "Unit Number #{i}")
end