class User < ActiveRecord::Base
  has_many :friendships, foreign_key: "user_id"
  has_many :friends, through: :friendships
  validates :name, presence: true
end
