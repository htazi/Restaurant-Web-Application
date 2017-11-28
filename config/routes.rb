Rails.application.routes.draw do
  
   root 'restaurant_web#home'
   get  '/login',    to: 'restaurant_web#login'
   get  '/contact', to: 'restaurant_web#contact'
   get  '/menu', to: 'restaurant_web#menu'
   #get  '/signup',  to: 'users#new'

 #resources :food_items
 #resources :categories
 # root 'categories#index'
end
