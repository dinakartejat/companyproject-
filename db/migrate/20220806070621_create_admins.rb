class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
