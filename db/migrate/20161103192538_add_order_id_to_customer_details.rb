class AddOrderIdToCustomerDetails < ActiveRecord::Migration
  def change
    add_column :customer_details, :order_id, :integer
  end
end
