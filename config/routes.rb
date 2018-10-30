Rails.application.routes.draw do
  resources :charges
  resources :products do
    resources :product_images
  end
  devise_for :users
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
