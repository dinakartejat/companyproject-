class RemoveEmployeeIdToAdmin < ActiveRecord::Migration[7.0]
  def change
    remove_column :admins, :employee_id
    add_column :employees, :admin_id, :integer
  end
end
