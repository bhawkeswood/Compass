class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :project_name
      t.string :developer
      t.integer :unit_number

      t.timestamps
    end
  end
end
