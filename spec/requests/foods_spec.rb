require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET /index' do
    before(:each) do
      get root_path
    end

    it 'should render root path' do
      expect(response.status).to eq(302)
    end
  end
end
