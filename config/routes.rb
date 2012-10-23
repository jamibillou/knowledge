Knowledge::Application.routes.draw do

  devise_for :users

  resources :users, :comments
  resources :projects do
  	resources :comments
  end
  resources :expressions do
  	resources :comments
  end
  resources :purifications do
  	resources :comments
  end  
  resources :others do
  	resources :comments
  end

  root :to => 'pages#index'

end
