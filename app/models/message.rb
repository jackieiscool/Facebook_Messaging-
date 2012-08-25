class Message < ActiveRecord::Base
  attr_accessible :body, :conversation_id, :user_id

  belongs_to :user
  belongs_to :conversation
end
