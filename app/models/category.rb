class Category < ApplicationRecord
  has_many :Food_Items
  validates:name, presence: true 
end
