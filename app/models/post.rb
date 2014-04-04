class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :recipient
  validates :content, :presence => true
end
