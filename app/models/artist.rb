class Artist < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :band_name, presence: true, length: { in: 2..200 }, uniqueness: true
  validates :biography, presence: true, length: { in: 2..2000 }




  attr_accessible :band_image, :band_name, :biography, :comment_id, :song_id, :email, :password, :password_confirmation

  mount_uploader :band_image, ArtistUploader

  has_many :songs, dependent: :destroy
  has_many :comments

  before_validation :set_default_role


  def role?(role)
    self.role.to_s == role.to_s
  end


  private
  def set_default_role
    self.role ||= :artist
  end


end



