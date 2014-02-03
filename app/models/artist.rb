class Artist < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true

  attr_accessible :band_image, :band_name, :biography, :comment_id, :song_id, :email, :password, :password_confirmation

  mount_uploader :band_image, ArtistUploader

  has_many :songs

end
