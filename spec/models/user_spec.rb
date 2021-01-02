require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { FactoryBot.build(:user) }

  it 'validates presence of name' do
    expect(user).not_to be_valid

    user.name = "Jerry"
    user.username = "Test1234"
    expect(user).to be_valid
  end
end
