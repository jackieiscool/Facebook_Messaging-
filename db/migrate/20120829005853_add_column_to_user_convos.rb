class AddColumnToUserConvos < ActiveRecord::Migration
  def change
    add_column :user_conversations, :user_name, :string
  end
end
