require 'rails_helper'

RSpec.describe 'Testing food views', type: :feature do
  describe 'Food#index' do
    before(:each) do
      user = User.create! name: 'Edi', email: 'edi@example.com', password: 'password'
      (1..5).each { |i| user.foods.create name: "Test food #{i}", price: 10, measurement_unit: 'grams' }
      visit root_path
    end

    it 'can require a user to login first' do
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end

    it 'should be able to see sign and login button' do
      within('form') do
        expect(find_all('input').length).to eq 4
      end
    end
  end
end
