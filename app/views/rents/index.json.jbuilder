json.array!(@rents) do |rent|
  json.extract! rent, :id, :price, :date, :preview_date, :end_date, :tenant_id
  json.url rent_url(rent, format: :json)
end
