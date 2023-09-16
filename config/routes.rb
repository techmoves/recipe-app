# frozen_string_literal: true

Rails.application.routes.draw do
  get 'public_recipes/index'
  get 'public_recipes/show'
  devise_for :users

  # get 'inventory/index'
  # get 'home/index'
  resources :inventories
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inventories#index"
end
