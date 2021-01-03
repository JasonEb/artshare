require 'rails_helper'

RSpec.describe Artwork, type: :model do
  let (:artwork) { FactoryBot.build(:artwork )}

  it 'validates the presence of title, image_url, and curator_id' do
    expect(:artwork).not_to be_valid

    artwork.title = "test title"
    expect(:artwork).not_to be_valid
    artwork.image_url = "www.localhost.com/example.jpeg"
    expect(:artwork).not_to be_valid
    artwork.curator_id = 0
    expect(:artwork).to be_valid
  end
end
