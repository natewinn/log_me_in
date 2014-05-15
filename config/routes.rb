Rails.application.routes.draw do
  devise_for :users
	
	root to: 'photos#index'
  
  resources :photos do
    member do
      get :upload_image
      end
    end
end