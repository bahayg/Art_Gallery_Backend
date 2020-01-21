class Gallery < ApplicationRecord
    has_many :artwork_galleries
    has_many :artworks, through: :artwork_galleries
end
