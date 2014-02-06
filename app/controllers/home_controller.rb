class HomeController < ApplicationController

def index
  redirect_to signup_path unless current_user

  @songs = Song.order('created_at DESC').all
  @comments = Comment.order('created_at DESC').limit(5)
end


end
