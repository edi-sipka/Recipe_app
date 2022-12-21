class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
    @inventory_food = InventoryFood.find_by(id: params[:id])
    return unless @inventory_food.nil?

    render 'show'
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(params.require(:inventory).permit(:name, :description))
    if @inventory.save
      redirect_to inventories_index_path
    else
      flash[:error] = @inventory.errors.full_messages
      render :new
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to inventories_index_path
  end
end
