class Conversation < ActiveRecord::Base
  attr_accessible :subject, :messages_attributes , :user_conversations_attributes

  has_many :user_conversations
  has_many :users, :through => :user_conversations
  has_many :messages

  accepts_nested_attributes_for :messages
  accepts_nested_attributes_for :user_conversations

end
