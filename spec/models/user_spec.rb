require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    @user1 = User.create(name: 'ban', email: 'ban@test.com', encrypted_password: '123123')
  end
  before(:each) { subject.save }
  it 'should have name ban' do
    expect(subject.name).to eql('ban')
  end

  it 'should have email ban@test.com' do
    expect(subject.email).to eql('ban@test.com')
  end
end
