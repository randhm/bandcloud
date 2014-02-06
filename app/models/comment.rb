class Comment < ActiveRecord::Base
  attr_accessible :comment_for_artist, :song_id, :artist_id

  validates :comment_for_artist, presence: true, length: { in: 2..200 }


  belongs_to :song
  belongs_to :artist
end
