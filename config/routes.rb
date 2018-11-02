Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :charges
  resources :products do
    resources :product_images
    resources :comments
  end
  resources :search, only: [:index]
  devise_for :users
  resources :users
  resources :orders
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
