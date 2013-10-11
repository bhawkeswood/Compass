class Deal < ActiveRecord::Base
	belongs_to :user
	has_many :tasks
	accepts_nested_attributes_for :tasks, :allow_destroy => true

	validates :project_name, presence: true
	validates :unit_number, presence: true
	validates :developer, presence: true

  def incomplete_tasks
    self.tasks.incomplete
  end

  def complete_tasks
    self.tasks.complete
  end
end
