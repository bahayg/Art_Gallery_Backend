class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :artist_name, :price
end
