class RemoveCustomerFieldsFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :customer_type_id, :integer
  	remove_column :users, :plan_id, :integer
  	remove_column :users, :shift, :string
  	remove_column :users, :days_type, :string
  	remove_column :users, :preferred_time, :time
  	remove_column :users, :deposit, :float
  	remove_column :users, :start_date, :datetime
  	remove_column :users, :batch_id, :integer
  	remove_column :users, :product_id, :integer
  end
end
