class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :image
      t.string :title
      t.string :artist_name
      t.string :price

      t.timestamps
    end
  end
end
