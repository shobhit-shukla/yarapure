class AddDepositAndStartDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :deposit, :float
    add_column :users, :start_date, :datetime
  end
end
