class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates :article_id, :content, :user_id, presence: true
end
