class Comment < ActiveRecord::Base
  attr_accessible :comment_for_artist, :song_id, :artist_id

  belongs_to :song
end
