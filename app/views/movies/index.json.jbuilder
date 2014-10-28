json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :review
  json.url movie_url(movie, format: :json)
end
