class Artwork < ApplicationRecord
    validates :title, :image_url, :curator_id, presence: true
    validates :image_url, uniqueness: { scope: :curator_id }
    validates :title, uniqueness: {scope: :curator_id }
end
