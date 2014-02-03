class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :band_name
      t.string :biography
      t.string :band_image
      t.integer :song_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
