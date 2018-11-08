class AddFieldToClothing < ActiveRecord::Migration[5.2]
  def change
    add_column :clothings, :src, :string
  end
end
