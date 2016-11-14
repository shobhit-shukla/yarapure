class AddFieldsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :empty, :string
    add_column :entries, :filled, :string
    add_column :entries, :amount_paid, :float
    add_column :entries, :driver1, :integer
    add_column :entries, :driver2, :integer
    add_column :entries, :total_amount, :string
  end
end
