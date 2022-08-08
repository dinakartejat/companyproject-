class RenameEmployeeToDevice < ActiveRecord::Migration[7.0]
  def change
    rename_column :devices, :employees_id, :employee_id
  end
end
