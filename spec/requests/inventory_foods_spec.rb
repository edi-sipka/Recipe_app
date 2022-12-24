require 'rails_helper'

RSpec.describe 'InventoryFoods', type: :request do
  before :each do
    @inventory = Inventory.create(name: 'Fridge')
  end

  describe 'GET /index' do
    it 'returns http success' do
      get inventory_inventory_foods_path(@inventory.id)
      expect(response.status).to eq(302)
    end
  end
end
