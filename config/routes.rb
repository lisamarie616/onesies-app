Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :products, only: [:index]

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
