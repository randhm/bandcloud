class Artist < ActiveRecord::Base
  attr_accessible :band_image, :band_name, :biography, :comment_id, :song_id

  mount_uploader :band_image, ArtistUploader

  has_many :songs
end
