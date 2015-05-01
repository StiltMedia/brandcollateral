class CreateCampaign2s < ActiveRecord::Migration
  def change
    create_table :campaign2s do |t|
      t.string :full_name
      t.string :company
      t.string :email
      t.string :phone
      t.string :quantity
      t.string :capacity
      t.text :notes
      t.string :style_type

      t.timestamps null: false
    end
  end
end
