class ChangeEmployeeIdTypeInEmployeesTable < ActiveRecord::Migration
  def change
    change_column :employees, :employee_id, :string
    rename_column :employees, :employee_id, :employee_no
  end
end
