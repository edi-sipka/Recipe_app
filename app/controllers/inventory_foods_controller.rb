class InventoryFoodsController < ApplicationController
  def index
    @inventory_foods = InventoryFood.all
  end

  def new
    @inventory_food = InventoryFood.new
  end

  def create
    @inventory_food = InventoryFood.new(params[:inventory_food])
    if @inventory_food.save
      redirect_to @inventory_food, :notice => "Successfully created inventory food."
    else
      render :action => 'new'
    end
  end

  def destroy
    @inventory_food = InventoryFood.find(params[:id])
    @food = Food.find(@inventory_food.food_id)
    @food.destroy

    redirect_back(fallback_location: root_path)
  end
end
