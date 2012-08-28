class ApplicationController < ActionController::Base
  protect_from_forgery

  # def facebook_user
  #   @user = FbGraph::User.me(facebook_token)
  # end

  def logged_in
    current_user != nil
  end

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
