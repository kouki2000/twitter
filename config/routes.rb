Rails.application.routes.draw do
  root 'tweets#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :tweets
  resources :users
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
end
