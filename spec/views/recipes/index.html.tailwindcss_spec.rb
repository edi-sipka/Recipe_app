require 'rails_helper'

RSpec.describe 'Testing recipe views', type: :feature do
  describe 'Recipe#index' do
    before(:each) do
      user = User.create! name: 'Tom', email: 'tom@example.com', password: 'password'
      (1..5).each { |i| user.recipes.create name: "Test Recipe #{i}", public: true, description: 'this is description', preparation_time: '1 hours', cooking_time: '1 days' }
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
