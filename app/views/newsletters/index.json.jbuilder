json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :content, :user_id, :title
  json.url newsletter_url(newsletter, format: :json)
end
