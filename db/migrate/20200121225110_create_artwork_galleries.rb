class CreateArtworkGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :artwork_galleries do |t|
      t.string :artwork_id
      t.string :gallery_id

      t.timestamps
    end
  end
end
