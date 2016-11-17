class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :vehicle_id
      t.integer :driver1_id
      t.integer :driver2_id
      t.integer :product_id
      t.string :aasm_state

      t.timestamps null: false
    end
  end
end
