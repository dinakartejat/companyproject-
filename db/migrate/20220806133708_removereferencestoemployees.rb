class Removereferencestoemployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :companyemployees, :companydevice_id, :integer
      remove_column :companyemployees, :companyadmin_id, :integer
  end
end
