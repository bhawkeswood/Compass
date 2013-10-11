class Task < ActiveRecord::Base
	belongs_to :deal
	has_one :user, through: :deals

  scope :complete, -> { where(done: true) }
  scope :incomplete, -> { where(done: false) }
end
