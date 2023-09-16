class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.create!(food_params)
    if @food.save
      if session[:food_source] == 'inventory'
        @food.inventory_foods.create!(inventory_id: session[:s_id], quantity: 0)
        redirect_to inventory_path(session[:s_id]), notice: 'Food created successfully.'
      else
        @food.recipe_foods.create!(recipe_id: session[:s_id], quantity: 0)
        redirect_to recipe_path(session[:s_id]), notice: 'Food created successfully.'
      end
    else
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id])
    redirect_to inventories_path, notice: 'Food deleted successfully.' if @food.destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :price, :measurement_unit, :quantity)
  end
end
