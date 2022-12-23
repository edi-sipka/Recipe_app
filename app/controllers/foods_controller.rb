class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
    redirect_to foods_path
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      flash[:success] = 'Food added successfully'
      redirect_to foods_path
    else
      flash[:error] = 'Error: Food could not be added'
      redirect_to new_food_path
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def food_params
    params.require(:food).permit(:name, :price, :measurement_unit)
  end
end
