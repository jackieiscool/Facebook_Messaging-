class AddRemoveColumnsFromUserConvo < ActiveRecord::Migration
  def change
    add_column :user_conversations, :friend_name, :string
    remove_column :user_conversations, :user_name
  end
end
