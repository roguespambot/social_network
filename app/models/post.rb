class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :recipient
  validates :content, :presence => true
  validates :author_id, :presence => true
end
