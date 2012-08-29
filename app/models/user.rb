#auth
class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  has_many :user_conversations
  has_many :conversations, :through => :user_conversations
  has_many :messages
  has_many :friends

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.facebook_uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.auth_token = auth["credentials"]["token"]
      user.auth_secret = auth["credentials"]["secret"]
    end
  end

  def self.friends_populate(user)
    friends = user.friends
    friends.each do |friend|
      friend = Friend.create
      friend.name = friend.name
    end
  end
end
