class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def check_for_authorization
    redirect_to :login unless facebook_token
  end

  def facebook_token
    session[:facebook_token]
  end

  def current_user
    session[:user_info]
  end
end
