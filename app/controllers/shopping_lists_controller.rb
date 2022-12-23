class ShoppingListsController < ApplicationController
  def new
    @inventories = Inventory.all
  end

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = RecipeFood.where(recipe_id: @recipe.id)
    @inventory = Inventory.find(params[:inventory_id])

    @shopping_lists = []
    @total_price = 0

    @recipe_foods.each do |recipe_food|
      inventory_food = InventoryFood.find(recipe_food.food_id)
      if !inventory_food.nil?
        quantity = recipe_food.quantity - inventory_food.quantity
        price = quantity * recipe_food.food.price

        if quantity.positive?
          @total_price += price
          @shopping_lists << { name: recipe_food.food.name, quantity: quantity, price: price}
        end
      end
    end

    @shopping_lists

  end
end
