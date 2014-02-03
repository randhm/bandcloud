class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_file
      t.integer :artist_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
