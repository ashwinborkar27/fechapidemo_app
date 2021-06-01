Rails.application.routes.draw do
  # resources :photos
  # resources :albums
  devise_for :users
  root to: 'pages#index'
	resources :albums do
	  resources :photos
	end
	
end
