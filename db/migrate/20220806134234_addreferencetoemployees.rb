class Addreferencetoemployees < ActiveRecord::Migration[7.0]
  def change
    add_column :companyemployees, :companydevice_id, :integer
      add_column :companyemployees, :companyadmin_id, :integer
  end
end
