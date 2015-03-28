class AddStyleTypeToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :style_type, :string
  end
end
