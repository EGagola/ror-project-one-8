class CreateCLothings < ActiveRecord::Migration[5.2]
  def change
    create_table :c_lothings do |t|
      t.string :name
      t.string :category
      t.float :price
      t.text :description
      t.string :colour
      t.string :size
      t.integer :outer_id

      t.timestamps
    end
  end
end
