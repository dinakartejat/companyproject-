class CreateCompanydevices < ActiveRecord::Migration[7.0]
  def change
    create_table :companydevices do |t|
      t.string :devicename
      t.string :device_type
      t.string :os_type
      t.string :service_tag
      t.references :companyemployee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
