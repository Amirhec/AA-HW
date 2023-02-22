require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
end

describe '#is_password?' do
  it 'returns true if the password is right' do
    user = User.new(email: 'testing@gmail.com', password: 'realpassword')
    expect(user.is_password?('realpassword')).to be true
  end

  it 'returns false if the password is wrong' do
    user = User.new(email: 'testing@example.com', password: 'realpassword')
    expect(user.is_password?('fakepassword')).to be false
  end
end