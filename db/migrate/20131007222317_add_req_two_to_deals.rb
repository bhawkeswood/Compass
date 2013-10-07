class AddReqTwoToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :req_two, :string
  end
end
