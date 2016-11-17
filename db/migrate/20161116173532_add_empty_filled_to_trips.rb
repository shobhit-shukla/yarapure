class AddEmptyFilledToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :empty, :integer
    add_column :trips, :filled, :integer
  end
end
