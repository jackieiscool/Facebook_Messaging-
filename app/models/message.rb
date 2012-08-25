class Message < ActiveRecord::Base
  attr_accessible :body, :conversation_id, :user_id
end
