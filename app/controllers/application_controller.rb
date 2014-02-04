class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_artist
  helper_method :current_user
  helper_method :logged_in?

  #helper methods here so they show in the view

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url , alert: "You can't access this page"
  end



#private methods so they don't interact with anything outside the controller
  private
  def current_artist
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end


  private
  def logged_in?
    !!current_artist
  end

  private
  def current_user  #beacuse cancan is defaulted to user, need to tell it I'm using artist
    current_artist
  end


end
