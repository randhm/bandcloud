class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_artist
  def current_artist
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def logged_in?
    !!current_artist
  end



end
