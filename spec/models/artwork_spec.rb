require 'rails_helper'

RSpec.describe Artwork, type: :model do
  let (:artwork) { FactoryBot.build(:artwork )}

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:image_url) }
  it { should validate_presence_of(:curator_id) }

  it { should validate_uniqueness_of(:image_url)}
  it { should validate_uniqueness_of(:curator_id)}

  it { should have_one(:curator) }
end
