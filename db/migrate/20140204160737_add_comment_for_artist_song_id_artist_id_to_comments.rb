class AddCommentForArtistSongIdArtistIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_for_artist, :string
    add_column :comments, :song_id, :integer
    add_column :comments, :artist_id, :integer
  end
end
