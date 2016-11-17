class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :registration_no
      t.string :year
      t.string :make
      t.string :model

      t.timestamps null: false
    end
  end
end
