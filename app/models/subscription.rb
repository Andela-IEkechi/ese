class Subscription < ActiveRecord::Base
  belongs_to :user

  validates :sub_category, :user_id, :sub_fee, presence: true

  SUBSCRIPTION_CATEGORY = %w(Monthly Annual)
end
