json.array!(@testes) do |testis|
  json.extract! testis, :id, :name
  json.url testis_url(testis, format: :json)
end
