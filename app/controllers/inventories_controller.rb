class InventoriesController < ApplicationController
  def index
    @inventories = current_user.inventories
  end

  def show
    @inventory = current_user.inventories.find(params[:id])
    @inventory_foods = @inventory.foods
      .joins(:inventory_foods)
      .select('foods.*, inventory_foods.quantity')
      .distinct
    session[:s_id] = @inventory.id
    session[:food_source] = 'inventory'
  end

  def destroy
    @inventory = current_user.inventories.find(params[:id])
    @inventory.destroy
    redirect_to inventories_path, notice: 'Inventory deleted successfully.'
  end
end
