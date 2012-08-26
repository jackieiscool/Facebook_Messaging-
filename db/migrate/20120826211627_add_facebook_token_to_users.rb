class AddFacebookTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_usre_id, :integer, :default => 0
    add_column :users, :fb_access_token, :string
  end
end
