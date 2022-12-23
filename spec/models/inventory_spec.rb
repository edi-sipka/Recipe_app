require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject do
    Food.create(name: 'Fridge')
  end
  before(:each) { subject.save }

  it 'should have name Fridge' do
    expect(subject.name).to eql('Fridge')
  end
end
