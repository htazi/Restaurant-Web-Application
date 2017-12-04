class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :size
      t.float :price
      t.string :category_id

      t.timestamps
    end
  end
end
