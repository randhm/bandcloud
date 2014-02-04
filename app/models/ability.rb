class Ability
  include CanCan::Ability

  def initialize(artist)
      artist ||= Artist.new
    if artist.role? :admin
      can :manage, :all


    elsif artist.role? :artist
     can :manage, Song do |song|
      song.artist == artist
    end
     can :manage, Artist do |artist_object|
      artist_object == artist
    end
      can :read, :all
      can :create, Song

   else
    can :create, Artist #guests (called artists but should really be Users, should have the ability to create themselves, otherwise they'll never be able to get onto the sign up page)
    can :read, :all

    end
  end
end


