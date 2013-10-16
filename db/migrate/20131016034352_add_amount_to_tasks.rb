class AddAmountToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :amount, :integer
  end
end
