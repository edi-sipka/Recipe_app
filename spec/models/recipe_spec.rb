require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user1 = User.create(name: 'ban', email: 'ban@test.com', encrypted_password: '123123')
    @recipe = Recipe.create(user_id: 1, name: 'Chicken Salad', description: 'Chicken Salad', preparation_time: '9min', cooking_time: '3min', public: 1)
  end
  it 'should have name Chicken Salad' do
    expect(@recipe.name).to eql('Chicken Salad')
  end

  it 'should have Chicken Salad' do
    expect(@recipe.description).to eql('Chicken Salad')
  end

  it 'should have preparation time of 9min' do
    expect(@recipe.preparation_time).to eql('9min')
  end

  it 'should have cooking time 3min' do
    expect(@recipe.cooking_time).to eql('3min')
  end

  it 'should have public to equal true' do
    expect(@recipe.public).to eql(true)
  end
end
