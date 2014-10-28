json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :review, :gender_id, :shelf_id
  json.url movie_url(movie, format: :json)
end
