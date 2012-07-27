class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include ApplicationHelper

  def signed_in?
  	unless user_signed_in?
  		flash[:error] = "Please sign in"
  		redirect_to root_path
  	end
  end
end
