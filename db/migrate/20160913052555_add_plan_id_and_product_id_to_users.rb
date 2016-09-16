class AddPlanIdAndProductIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :plan_id, :integer
    add_column :users, :product_id, :integer
  end
end
