Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :charges
  resources :products do
    resources :product_images
    resources :comments
  end
  resources :search, only: [:index]
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'} do
    resources :addresses
  end
  resources :users, only: [:index, :show] do
    resources :comments
  end
  resources :orders
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
