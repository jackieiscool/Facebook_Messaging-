class UserSessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)

    session[:facebook_token] = request.env['omniauth.auth']['credentials']['token']
    session[:user_info] = request.env['omniauth.auth']['info']
    session[:facebook_user_id] = request.env['omniauth.auth']['uid']
    redirect_to root_path
  end

  def failure
    render :text => 'Login failed...'
  end

  def destroy
    session[:facebook_token] = nil
    session[:user_info] = nil
    session[:facebook_user_id] = nil
    render :text => 'You have logged out'
  end
end
