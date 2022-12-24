class AddRecipeRefToRecipeFood < ActiveRecord::Migration[7.0]
  def self.up
     add_reference :recipe_foods, :recipe, null: false, foreign_key: true
  end

  def self.down
     remove_reference :recipe_foods, :recipe, null: false
  end
end
