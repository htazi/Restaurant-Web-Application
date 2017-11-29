Rails.application.routes.draw do
  
  get 'users/new'
  get 'categories/index'

   root 'restaurant_web#home'
   get  '/login',    to: 'restaurant_web#login'
   get  '/contact', to: 'restaurant_web#contact'
   get  '/menu', to: 'catefories#index'
   get  '/signup',  to: 'users#new'

 resources :food_items
 resources :categories
 root 'categories#index'
end
