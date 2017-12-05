Rails.application.routes.draw do
  

  resources :food_items
  resources :categories
  
  #get 'sessions/new'
  get '/login',        to: 'sessions#new'
  post '/login',       to: 'sessions#create'
  delete '/logout',    to: 'sessions#destroy'

  #get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post '/search',  to: 'users#search'
  get '/search',  to: 'users#search'
 
  resources :users

  #get 'fooditems/index'
  #get  '/show', to: 'food_items#index'
  
  #get 'restaurant_web/ home'
    

   root 'restaurant_web#home'
   get  '/contact', to: 'restaurant_web#contact'
   get  '/menu', to: 'category_list#select_category'
   get  '/add_category', to: 'categories#index'
   get  '/new_food_items', to: 'food_items#new'
   get  '/go_to_food_items', to: 'food_items#index'
   get  '/selected_category', to: 'categories#selected_category'
   get  '/list', to: 'category_list#list'
   get  '/create_order', to: 'category_list#create_order'
   
   

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
