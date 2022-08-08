class AddReferencesToDevice < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :employees, foreign_key: true
  end
end
