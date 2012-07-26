Knowledge::Application.routes.draw do

  devise_for :users

  resources :users
  resources :projects

  root :to => 'pages#index'

end
