class Friend < User
  has_many :friendships, foreign_key: "friend_id"
  has_many :users, through: :friendships
  validates :name, presence: true
end
