class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :size
      t.decimal :price
      t.string :category_name

      t.timestamps
    end
  end
end
