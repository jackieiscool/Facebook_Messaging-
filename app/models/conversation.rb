class Conversation < ActiveRecord::Base
  attr_accessible :subject, :messages_attributes , :user_conversations_attributes

  has_many :user_conversations
  has_many :users, :through => :user_conversations
  has_many :messages

  accepts_nested_attributes_for :messages
  accepts_nested_attributes_for :user_conversations

  # def friend_name
  #   #facebook_user
  #   @user = FbGraph::User.me(facebook_token)
  #   @user.fetch
  #   friends = @user.friends
  #   friend.each do |friend|
  #     name = friend.name
  #     User.find_by_name(name) unless name.blank?
  #   end
  # end

  # private
  # def check_for_authorization
  #   redirect_to :login unless facebook_token
  # end
  #
  # def facebook_token
  #   session[:facebook_token]
  # end
  #
  # def current_user
  #   session[:user_info]
  # end
end
