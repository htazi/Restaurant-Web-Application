Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'users/new'
  
  
  #get 'categories/index'

   root 'restaurant_web#home'
   get  '/login',    to: 'restaurant_web#login'
   get  '/contact', to: 'restaurant_web#contact'
   get  '/menu', to: 'catefories#index'
   get  '/signup',  to: 'users#new'
   get  '/users', to: 'index#users_path'
   get  '/users/:id(.:format)', to: 'show#users_path(users_path)'
   post '/users(.:format)', to: 'users#create'
   post 'signup', to: 'users#create'
   resources :users

 resources :food_items
 #resources :categories
 #root 'categories#index'
end
