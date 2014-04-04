class Friendship < ActiveRecord::Base
  belongs_to :friend, :foreign_key => :friend_id, :class_name => "Friend"
  belongs_to :user, :foreign_key => :user_id, :class_name => "User"
  validates :user_id, :presence => true
  validates :friend_id, :presence => true

  def reciprocate
    new_friendship = Friendship.create(:user_id => self.friend.id, :friend_id => self.user.id)
  end

  def find_reciprocal
    found_friendship = Friendship.find_by(:user_id => self.friend_id, :friend_id => self.user_id)
  end
end
