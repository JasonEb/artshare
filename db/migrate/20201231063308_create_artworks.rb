class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.string :curator_id, null: false

      t.timestamps
    end

    add_index :artworks, :curator_id
    add_index :artworks, :image_url, unique: true
    add_index :artworks, [:title, :curator_id], unique: true
  end
end
