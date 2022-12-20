require 'rails_helper'

RSpec.describe 'Inventories', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/inventories/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/inventories/show'
      expect(response).to have_http_status(:success)
    end
  end
end
