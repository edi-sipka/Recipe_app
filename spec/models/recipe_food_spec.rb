require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    Food.create(name: 'banana', measurement_unit: 'grams', price: 2)
    @user1 = User.create(name: 'ban', email: 'ban@test.com', encrypted_password: '123123')
    @recipe = Recipe.create(user_id: 1, name: 'Chicken Salad', description: 'Chicken Salad', preparation_time: '9min', cooking_time: '3min', public: 1)
    @recipe_food = RecipeFood.create(recipe_id: 1, food_id: 1, quantity: 3)
  end
  it 'should have name recipe id' do
    expect(@recipe_food.recipe_id).to eql(1)
  end

  it 'should have food id equal 1' do
    expect(@recipe_food.food_id).to eql(1)
  end

  it 'should have quantity 3' do
    expect(@recipe_food.quantity).to eql(3)
  end
end
