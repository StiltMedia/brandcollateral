class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :company
      t.string :email
      t.string :phone
      t.string :quantity
      t.string :capacity
      t.text :notes

      t.timestamps null: false
    end
  end
end
