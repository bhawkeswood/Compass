class AddReqOneToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :req_one, :string
  end
end
