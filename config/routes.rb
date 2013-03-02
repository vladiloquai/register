Register::Application.routes.draw do
  
  devise_for :users

  resources :users

  root :to => 'home#index'
  resources :records do
  	collection do
  		get :summary
  	end
  end
  resources :services

end
