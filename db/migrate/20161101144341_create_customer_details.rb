class CreateCustomerDetails < ActiveRecord::Migration
  def change
    create_table :customer_details do |t|
      t.integer :customer_id
      t.integer :customer_type_id
      t.integer :plan_id
      t.string :shift
      t.integer :days_type
      t.time :preferred_time
      t.date :start_date
      t.float :deposit_amount
      t.integer :rate
      t.integer :quantity
      t.integer :product_id
      t.boolean :is_order, default: :false

      t.timestamps null: false
    end
  end
end
