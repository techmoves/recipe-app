# frozen_string_literal: true

Rails.application.routes.draw do

  resources :recipes do
    member do
      delete :destroy
      get 'add_ingredient', to: 'recipes#add_ingredient'
      post 'add_ingredient', to: 'recipes#add_ingredient'
      get 'generate_shopping_list', to: 'recipes#generate_shopping_list'
      delete 'remove_food'
    end
  end

  get 'public_recipes/index'
  get 'public_recipes/show'

  devise_for :users

  resources :inventories

  resources :foods, only: %i[create new destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
