class AddColumnsToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :username, :string
    add_column :admins, :password, :integer 
  end
end
