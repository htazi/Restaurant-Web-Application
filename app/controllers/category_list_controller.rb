class CategoryListController < ApplicationController
  
  def list
    @category = Category.find(params[:id])
  end
  
  def create_order
    @category = Category.find(params[:id])
  end
  
  def select_category
    @categories = Category.all
  end
end
