class AddDealIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :deal_id, :integer
  end
end
