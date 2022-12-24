require 'rails_helper'

RSpec.describe 'Inventories', type: :request do
  before :each do
    # @user = User.create(name: 'John Doe', email: 'johndoe@email.com', password: 'password')
    @inventory = Inventory.create(name: 'Fridge')

  end

  describe 'GET /index' do
    it 'returns http success' do
      get inventories_index_path
      expect(response.status).to eq(302)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get inventory_path(@inventory)
      expect(response.status).to eq(302)
    end
  end
end
