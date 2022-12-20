require 'rails_helper'

RSpec.describe 'RecipeFoods', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/recipe_foods/index'
      expect(response).to have_http_status(:success)
    end
  end
end
