class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :address
      t.string :city
      t.string :shift
      t.time :preferred_time
      t.string :batch_id

      t.timestamps null: false
    end
  end
end
