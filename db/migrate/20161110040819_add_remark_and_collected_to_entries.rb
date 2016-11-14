class AddRemarkAndCollectedToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :remark, :text
    add_column :entries, :collected_by, :integer
  end
end
