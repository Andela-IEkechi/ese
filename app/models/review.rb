class Review < ActiveRecord::Base
  belongs_to :user

  validates :rating, :content, presence: true
  validates_uniqueness_of :user_id, message: "You have already reviewed this book!"#, :scope => :friend_id
end
