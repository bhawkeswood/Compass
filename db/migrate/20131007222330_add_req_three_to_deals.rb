class AddReqThreeToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :req_three, :string
  end
end
