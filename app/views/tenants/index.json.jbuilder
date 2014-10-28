json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :name, :email, :phone_number
  json.url tenant_url(tenant, format: :json)
end
