authclass User < ActiveRecord::Base
  include FacebookClient
  attr_accessible :email, :firstname, :lastname
  has_many :user_conversations
  has_many :conversations, :through => :user_conversations
  has_many :messages

  # def self.from_omniauth(auth)
  #   find_by_uid(auth["uid"]) || create_with_omniauth(auth)
  # end
  #
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.auth_token = auth["credentials"]["token"]
      user.auth_secret = auth["credentials"]["secret"]
    end
  end
end
