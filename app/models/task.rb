class Task < ActiveRecord::Base
	belongs_to :deal
	has_one :user, through :deals
end
