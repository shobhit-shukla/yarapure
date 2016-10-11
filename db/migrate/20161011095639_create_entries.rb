class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :user_id
      t.string :product_id
      t.float :rate
      t.integer :no_of_jars
      t.float :amount

      t.timestamps null: false
    end
  end
end
