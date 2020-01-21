class Artwork < ApplicationRecord
    has_many :artwork_galleries
    has_many :galleries, through: :artwork_galleries
end
