require 'rails_helper'

RSpec.describe Food, type: :model do
 subject do
  @user = User.create!(name:"Edi", role:"user", email:"e2e@gmail.com", password:"ediedi" )
  Food.create(name:"banana", measurement_unit:"grams", price:2, user:@user)
 end
 before(:each) {subject.save}

 it "should have name banana" do
  expect(subject.name).to eql("banana")
 end

 it "should have price of 2" do
  expect(subject.price).to eql(2)
 end

 it "Price should be 0 or higher" do
  subject.price = -5
  expect(subject).to_not be_valid
 end
end
