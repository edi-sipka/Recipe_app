require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  before(:each) do
    Food.create(name: 'banana', measurement_unit: 'grams', price: 2)
    @inventory = Inventory.create(name: 'Fridge')
    @inventory_food = InventoryFood.create(inventory_id: 1, food_id: 1, quantity: 3)
  end
  it 'should have name inventory id' do
    expect(@inventory_food.inventory_id).to eql(1)
  end

  it 'should have food id equal 1' do
    expect(@inventory_food.food_id).to eql(1)
  end

  it 'should have quantity 3' do
    expect(@inventory_food.quantity).to eql(3)
  end
end
