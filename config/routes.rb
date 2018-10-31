Rails.application.routes.draw do
  resources :charges
  resources :products do
    resources :product_images
    resources :comments
  end
  resources :search, only: [:index]
  devise_for :users
  resources :users
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
