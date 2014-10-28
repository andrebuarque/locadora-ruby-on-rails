json.array!(@shelves) do |shelf|
  json.extract! shelf, :id, :name, :gender_id
  json.url shelf_url(shelf, format: :json)
end
