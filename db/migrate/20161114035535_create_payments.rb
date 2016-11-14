class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_mode
      t.integer :customer_id
      t.integer :employee_id
      t.string :bank
      t.datetime :cheque_date
      t.float :total_dues
      t.text :remark
      t.string :cheque_no
      t.float :amount

      t.timestamps null: false
    end
  end
end
