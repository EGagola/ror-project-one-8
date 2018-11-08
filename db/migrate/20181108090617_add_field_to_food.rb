class AddFieldToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :src, :string
  end
end
