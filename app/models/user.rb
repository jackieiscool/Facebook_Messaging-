class User < ActiveRecord::Base
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
      user.firstname = auth["info"]["firstname"]
      user.lastname = auth["info"]["lastname"]
      user.email = auth["info"]["email"]
    end
  end
end
