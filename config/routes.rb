Rails.application.routes.draw do
  resources :products do
    resources :product_images
    resources :comments
  end
  devise_for :users
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
