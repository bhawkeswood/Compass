class AddInstallmentToCommissions < ActiveRecord::Migration
  def change
    add_column :commissions, :installment, :integer
  end
end
