
Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  root "home#index"
  # resources :restaurants, only: [:index, :show, :new, :create, :destroy]
  resources :home
  resources :restaurant_cuisines, only: [:index]
  # resources :restaurants, only: [:index]
  # config/routes.
  resources :cart_items
  # config/routes.rb
  resources :orders do
    member do
      get 'show_details'
    end
  end

  resources :charges
  resources :dishes 
  # get '/contact', to: 'customer#contact', as: 'contact's
  resources :restaurants do
    member do
      get 'cuisines', to: 'restaurants#cuisines'
    end
  end
end 