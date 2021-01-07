require 'rails_helper'

RSpec.describe ArtworkShare, type: :model do
  
  subject (:artwork_share) { FactoryBot.build(:artwork_share) }

  it { should belong_to(:curator) }
  it { should belong_to(:artwork) }
end
