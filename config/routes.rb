Rails.application.routes.draw do
  root 'tweets#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :tweets
  resources :users
end
