class Artwork < ApplicationRecord
    validates :title, :image_url, presence: true
    validates :image_url, uniqueness: true
    validates :title, uniqueness: {scope: :curator_id }

    belongs_to :curator, foreign_key: :curator_id, class_name: 'User'
end
