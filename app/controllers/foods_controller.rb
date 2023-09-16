class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.create(food_params)
    redirect_to foods_path
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path, notice: 'Food deleted successfully.'
  end
end
