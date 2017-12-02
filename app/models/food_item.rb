class FoodItem < ApplicationRecord
<<<<<<< HEAD
  belongs_to :Category, required: false
  validates :name, :size, :price, :category_name, presence: true
  validates :name, length: {maximum: 20}
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000}  
end
=======
  belongs_to :category
  validates :name, :size, :price, presence: true
  validates :name, length: {maximum: 20}
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000}  

end
>>>>>>> e7c3b44625529f14768c11807ba2eb1e45c719c1
