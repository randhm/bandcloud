class Song < ActiveRecord::Base
  attr_accessible :artist_id, :comment_id, :song_file, :song_name

  validates :song_name, presence: true, length: { in: 2..200 }


  mount_uploader :song_file, SongUploader


  belongs_to :artist
  has_many :comments
end
