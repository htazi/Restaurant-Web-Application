class CategoryListController < ApplicationController
  def list
    @category = Category.find(params[:id])
  end
  
  def create_order
    #@food_item = FoodItem.find(params[:name])
  end
end
