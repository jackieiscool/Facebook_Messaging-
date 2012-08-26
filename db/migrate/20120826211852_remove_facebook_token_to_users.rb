class RemoveFacebookTokenToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fb_usre_id, :integer
    add_column :users, :fb_user_id, :integer, :default => 0
  end
end
