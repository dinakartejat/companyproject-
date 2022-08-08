class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :device_name
      t.string :device_type
      t.string :os_type
      t.integer :service_tag
      # t.references :employee, index: true

      t.timestamps
    end
  end
end
