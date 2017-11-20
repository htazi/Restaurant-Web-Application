Rails.application.routes.draw do
  resources :food_items
  resources :categories
  root 'categories#index'
end
