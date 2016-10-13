class AddDaysTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :days_type, :integer
  end
end
