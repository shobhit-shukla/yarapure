class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city_id
      t.string :zip_code
      t.boolean :active
      t.string :user_id

      t.timestamps null: false
    end
  end
end
