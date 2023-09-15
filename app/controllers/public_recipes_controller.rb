class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(:recipe_foods, :foods, :user).where(public: true)
  end
end
