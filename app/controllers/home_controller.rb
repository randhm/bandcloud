class HomeController < ApplicationController

def index
  redirect_to signup_path unless current_user
end


end
