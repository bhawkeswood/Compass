class AddDescriptionToTasks < ActiveRecord::Migration
  def change
  add_column :tasks, :description, :string
  add_column :tasks, :done, :boolean
  end
end
