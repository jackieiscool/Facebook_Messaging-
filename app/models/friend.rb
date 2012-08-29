class Friend < ActiveRecord::Base
  attr_accessible :facebook_uid, :user_id
  belongs_to :user
end
