json.array!(@tvs) do |tv|
  json.extract! tv, :id, :title, :description, :published, :youtube_url
  json.url tv_url(tv, format: :json)
end
