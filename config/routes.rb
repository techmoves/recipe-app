# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'recipes/index'
  # get 'recipes/:id', to: 'recipes#show'
  # get 'recipes/:id', to: 'recipes#show'
  # patch 'recipes/:id/toggle_recipe_public', to: 'recipes#toggle_recipe_public', as: 'toggle_recipe_public'
  resources :recipes do
    member do
      delete :destroy         
      get 'add_ingredient', to: 'recipes#add_ingredient'
      post 'add_ingredient', to: 'recipes#add_ingredient'
      get 'generate_shopping_list', to: 'recipes#generate_shopping_list'
      delete 'remove_food'
    end

    # collection do
    #   get 'public_recipes', to: 'recipes#public_recipes'
    # end
  end
  devise_for :users
  # get 'inventory/index'
  # get 'home/index'
  resources :inventories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inventories#index"
end
