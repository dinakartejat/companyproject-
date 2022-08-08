class CreateCompanyemployees < ActiveRecord::Migration[7.0]
  def change
    create_table :companyemployees do |t|
      t.string :name
      t.string :email
      t.integer :phonenumber
      t.references :companydevice, null: false, foreign_key: true
      t.references :companyadmin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
