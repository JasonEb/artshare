require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:blank_user) { FactoryBot.build(:blank_user) }

  it 'validates presence of name' do
    expect(blank_user).not_to be_valid

    blank_user.name = "Jerry"
    blank_user.username = "Test1234"
    expect(user).to be_valid
  end
end
