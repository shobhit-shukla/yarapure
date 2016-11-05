class AddPrepaidAmountToCustomerDetails < ActiveRecord::Migration
  def change
    add_column :customer_details, :prepaid_amount, :float
  end
end
