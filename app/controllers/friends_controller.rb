class FriendsController < ApplicationController
  def index
    user = FBGraph::User.me(facebook_token)
    user.fetch
    @friends = user.friends
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
