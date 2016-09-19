class AddRateAndQuantityToProduct < ActiveRecord::Migration
  def change
    add_column :products, :rate, :float
    add_column :products, :quantity, :integer
  end
end
