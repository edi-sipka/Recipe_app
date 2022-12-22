class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:public]

  def index
    @recipes = Recipe.all.where(user_id: current_user.id)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe.user = current_user
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public))
    if @recipe.save
      flash[:success] = 'Food is added successfully'
      redirect_to recipes_path
    else
      flash[:error] = @recipe.errors.full_messages
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_foods = @recipe.recipe_foods
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
