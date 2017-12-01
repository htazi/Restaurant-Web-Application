class FoodItem < ApplicationRecord
  belongs_to :category
  validates :name, :size, :price, presence: true
  validates :name, length: {maximum: 20}
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000}  

end