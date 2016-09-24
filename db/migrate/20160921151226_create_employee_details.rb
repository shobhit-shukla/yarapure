class CreateEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :employee_details do |t|
      t.integer :employee_id
      t.string :department
      t.string :designation
      t.string :grade
      t.integer :reporting_user_id
      t.float :salary
      t.string :previous_company
      t.float :previous_salary
      t.string :previous_designation
      t.date :joining_date

      t.timestamps null: false
    end
  end
end
