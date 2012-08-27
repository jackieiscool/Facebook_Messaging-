class HomepageController < ApplicationController
  prepend_before_filter :check_for_authorization

  def index
    @user = FbGraph::User.me(facebook_token)
    @user.fetch
    @user_info = current_user
    @friends = @user.friends
  end
end
