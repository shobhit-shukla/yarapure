class AddCustomerTypeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :customer_type_id, :integer
  end
end
