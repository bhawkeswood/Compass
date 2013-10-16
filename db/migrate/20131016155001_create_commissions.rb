class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.integer :installment
    	t.string :description
    	t.integer :amount
    	t.string :commission_date
    	t.boolean :done
    	t.integer :deal_id
      t.timestamps
    end
  end
end
