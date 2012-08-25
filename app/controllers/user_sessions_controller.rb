class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:facebook_token] = request.env['omniauth.auth']['credentials']['token']
    session[:user_info] = request.env['omniauth.auth']['info']
    session[:facebook_user_id] = request.env['omniauth.auth']['uid']
    redirect_to '/'
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
