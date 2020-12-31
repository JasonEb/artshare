class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.string :curator_id, null: false

      t.timestamps
    end

    add_index :artworks, 
  end
end
