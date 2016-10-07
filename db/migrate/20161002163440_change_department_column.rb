class ChangeDepartmentColumn < ActiveRecord::Migration
  def change
    rename_column :employee_details, :department, :department_id
    change_column :employee_details, :department_id, 'integer USING CAST(department_id AS integer)'

  end
end
