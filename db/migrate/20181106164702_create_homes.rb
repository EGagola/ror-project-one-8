class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :category
      t.float :price
      t.text :description
      t.string :colour
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :weight
      t.integer :outer_id

      t.timestamps
    end
  end
end
