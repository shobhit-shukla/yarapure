class AddTypeAndPhoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :primary_phone, :string
    add_column :users, :secondary_phone, :string
  end
end
