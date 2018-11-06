class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.float :price
      t.text :description
      t.boolean :vegetarian
      t.integer :outer_id

      t.timestamps
    end
  end
end
