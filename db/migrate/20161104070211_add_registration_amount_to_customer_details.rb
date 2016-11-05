class AddRegistrationAmountToCustomerDetails < ActiveRecord::Migration
  def change
    add_column :customer_details, :registration_amount, :float
  end
end
