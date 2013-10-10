class Deal < ActiveRecord::Base
	belongs_to :user
	has_many :tasks
	accepts_nested_attributes_for :tasks, :allow_destroy => true

  validates :project_name, presence: true
	validates :project_name, presence: true
	validates :unit_number, presence: true
	validates :developer, presence: true
end
