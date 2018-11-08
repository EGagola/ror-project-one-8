class AddImageToHome < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :src, :string
  end
end
