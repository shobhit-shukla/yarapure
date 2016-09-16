class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :country_id
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
