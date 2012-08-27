class AddColumnsToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fb_access_token
    remove_column :users, :fb_user_id
    remove_column :users, :firstname
    remove_column :users, :lastname
    add_column :users, :name, :string
    add_column :users, :auth_token, :string
    add_column :users, :auth_secret, :string
    add_column :users, :image, :string
  end
end
