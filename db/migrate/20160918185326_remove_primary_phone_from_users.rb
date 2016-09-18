class RemovePrimaryPhoneFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :primary_phone, :string
  end
end
