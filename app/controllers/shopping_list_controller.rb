class ShoppingListController < ApplicationController
  # skip_after_action :verify_same_origin_request
  def new
    @inventories = Inventory.all
    # respond_to do |format|
    #   format.js
    # end
  end

  def index
    @inventory = Inventory.find(params[:inventories])
    @recipe = Recipe.find(params[:recipes])
    @inventory_foods = InventoryFood.where(inventory_id: @inventory.id)
    @recipe_foods = RecipeFood.where(recipe_id: @recipe.id)

    @shopping_list = []

    @recipe_foods.each do |recipe_food|
      @inventory_foods.each do |inventory_food|
        if recipe_food.food_id == inventory_food.food_id
          quantity = recipe_food.quantity - inventory_food.quantity
          price = recipe_food.food.price * recipe_food.quantity
          if quantity.positive?
            @shopping_list << { name: recipe_food.food.name, quantity: quantity, price: price,
                                measurement_unit: recipe_food.food.measurement_unit }
          end
        end

      end
    end
  end
end
