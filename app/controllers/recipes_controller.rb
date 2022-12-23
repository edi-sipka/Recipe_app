class RecipesController < ApplicationController
  before_action :authenticate_user!, except: %i[public show]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public))
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path
    else
      flash[:error] = @recipe.errors.full_messages
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_foods = @recipe.recipe_foods.includes(:food)
    @inventories = Inventory.all
  end

  def public
    @recipes = Recipe.all.where(public: true)
  end

  def update
    @recipe = Recipe.find(params[:id])
    @public = @recipe.public ? false : true
    Recipe.update(@recipe.id, public: @public)
    redirect_to recipe_path
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_back(fallback_location: recipes_path)
  end
end
