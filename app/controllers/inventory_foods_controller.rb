class InventoryFoodsController < ApplicationController
  def index
    @inventory_foods = InventoryFood.all
  end

  def new
    @foods = Food.all
    @inventory_food = InventoryFood.new
  end

  def create
    @inventory_food = InventoryFood.new(params.require(:inventory_food).permit(:quantity, :food_id))
    @inventory_food.inventory = Inventory.find(params[:inventory_id])
    if @inventory_food.save
      redirect_to inventory_path(@inventory_food.inventory_id), notice: 'Successfully created inventory food.'
    else
      render action: 'new'
    end
  end

  def destroy
    @inventory_food = InventoryFood.find(params[:id])
    @inventory_food.destroy

    redirect_back(fallback_location: root_path)
  end
end
