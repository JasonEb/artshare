 class User < ApplicationRecord
   validates :name, :username, presence: true

   has_many :artworks, foreign_key: :curator_id, dependent: :destroy
 end