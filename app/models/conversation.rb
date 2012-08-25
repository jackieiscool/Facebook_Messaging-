class Conversation < ActiveRecord::Base
  attr_accessible :subject

  has_many :user_conversations
  has_many :users, :through => :user_conversations
  has_many :messages
end
