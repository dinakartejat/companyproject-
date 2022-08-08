class CreateCompanyadmins < ActiveRecord::Migration[7.0]
  def change
    create_table :companyadmins do |t|
      t.string :username
      t.integer :password
      t.string :email

      t.timestamps
    end
  end
end
