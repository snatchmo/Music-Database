class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.references :genre, index: true

      t.timestamps null: false
    end
    add_foreign_key :artists, :genres
  end
end
