json.array!(@rents) do |rent|
  json.extract! rent, :id, :price, :date, :preview_date, :end_date, :tenant_id, :movie_ids
  json.url rent_url(rent, format: :json)
end
