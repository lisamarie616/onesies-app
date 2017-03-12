Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/bibs', as: 'rails_admin'
  resources :categories, only: [:show], path: 'onesies'
  resources :products, only: [:index], path: 'onesies'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
