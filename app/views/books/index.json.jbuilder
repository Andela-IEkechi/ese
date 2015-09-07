json.array!(@books) do |book|
  json.extract! book, :id, :name, :description, :image, :release_date, :author, :cost
  json.url book_url(book, format: :json)
end
