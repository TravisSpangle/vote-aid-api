require 'rails_helper'

RSpec.describe User, type: :model do
  def params
    { first: 'test', last: 'test', email: 'test@test.com', state: 'wa' }
  end

  it 'saves a user and returns a token' do
    token = "f3db0e07a5996fd69c89fd5a27351e9b72f40be2acc2ca518b11eb399031c0c5"
    expect(User.login(params)).to eq(token)
  end

  it 'does not create a new user where one exists but returns the token' do
    expect do
      User.login(params)
      User.login(params)
    end.to change { User.count }.by(1)
  end

  it 'does not save a user when missing data' do
    expect { User.login(first: 'fail') }.to raise_error(ArgumentError)
  end
end
