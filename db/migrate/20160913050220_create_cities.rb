class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state_id
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
