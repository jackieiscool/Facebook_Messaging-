class UserConversation < ActiveRecord::Base
  attr_accessible :conversation_id, :user_id, :username
  has_many :users
  has_many :conversations
  has_many :messages, :through => :conversations
end
