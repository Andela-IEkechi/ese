json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :sub_status, :sub_category, :user_id, :sub_fee
  json.url subscription_url(subscription, format: :json)
end
