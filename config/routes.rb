Register::Application.routes.draw do
  
  devise_for :users

  resources :users


  root :to => 'records#summary'
  resources :records
  resources :services

end
