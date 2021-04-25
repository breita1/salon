Rails.application.routes.draw do
  
  resources :bookings
  resources :schedules
  
  
 # resources :categories
  root 'static_pages#home'
  get '/help' => 'static_pages#help'
  
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  get 'schedules/new'
  get 'cart/createOrder'
  
  
  resources :orders do
    resources :orderitems
  end
 # get '/schedules' => 'cart#checkout'
 
 devise_for :users do 
  resources :orders 
  end
  
  
  #get '/checkout' => 'cart#createOrder'
 # get 'cart/index'
  
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  
  get '/login' => 'user#login' 
  get '/logout' => 'user#logout'
  
  get'/profile' => 'profile#login'
  get 'profile' => 'profile#login'
  

   resources :items

 
  
  


  get '/cart' => 'cart#index'
  
  get '/cart/clear' => 'cart#clear'  
  get 'clearcart' => 'cart#clear'
  
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get 'cart/index'
  
  get '/checkout' => 'schedules#new'
#  get '/checkout' => 'cart#createOrder'
  
  
  get '/schedule/new' => 'cart#createOrder'
  


  
  get '/aboutSend/:id' => 'static_pages#aboutSend'




end
