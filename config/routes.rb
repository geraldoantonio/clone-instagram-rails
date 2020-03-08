# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users, only: %i[sessions registrations passwords]

  resources :posts, only: %i[index show new create]

  resources :users, only: :show, param: :username
  get 'edit_profile', to: 'users#edit'
  patch 'profile', to: 'users#update'
end
