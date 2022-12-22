require 'rails_helper'

RSpec.describe Food, type: :model do
 subject do
  Food.create(name:"banana", measurement_unit:"grams", price:2)
 end
 before(:each) {subject.save}

 it "should have name banana" do
  expect(subject.name).to eql("banana")
 end

 it "should have price of 2" do
  expect(subject.price).to eql(2)
 end

 it 'should have Measurement unit grams' do
    expect(subject.measurement_unit).to eql('grams')
  end
end
