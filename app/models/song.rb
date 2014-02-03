class Song < ActiveRecord::Base
  attr_accessible :artist_id, :comment_id, :song_file, :song_name

  mount_uploader :song_file, SongUploader


  belongs_to :artist
end
