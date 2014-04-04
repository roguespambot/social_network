class UpdateFriendships < ActiveRecord::Migration
  def change
    remove_column :friendships, :user1_id, :int
    remove_column :friendships, :user2_id, :int
    add_column :friendships, :user_id, :int
    add_column :friendships, :friend_id, :int

  end
end
