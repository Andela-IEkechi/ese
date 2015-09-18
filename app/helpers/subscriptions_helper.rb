module SubscriptionsHelper
  def sub_fee_selector(category)
    category == "Monthly" ? "1,000" : "9,000"
  end
end
