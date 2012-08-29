class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :facebook_uid
      t.integer :user_id

      t.timestamps
    end
  end
end
