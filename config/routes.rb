Rails.application.routes.draw do
  
  

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
  get  '/show', to: 'food_items#index'
  
  #get 'restaurant_web/ home'
    

   root 'restaurant_web#home'
   get  '/contact', to: 'restaurant_web#contact'
   get  '/menu', to: 'catefories#index'
  

 resources :food_items
 resources :categories
 #root 'categories#index'
 
 
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
