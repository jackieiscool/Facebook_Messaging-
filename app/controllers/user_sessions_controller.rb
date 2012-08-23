class UserSessionsController < ApplicationController
  def new
  end

  def create
    session[:facebook_token] = request.env['omniauth.auth']['credentials']['token']
    session[:user_info] = request.env['omniauth.auth']['info']
    redirect_to '/'
  end

  def failure
    render :text => 'Login failed...'
  end

  def destroy
    session[:facebook_token] = nil
    session[:user_info] = nil
    render :text => 'You have logged out'
  end
end
