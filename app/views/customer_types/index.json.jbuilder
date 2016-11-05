json.array!(@customer_types) do |customer_type|
  json.extract! customer_type, :id, :title
  json.url customer_type_url(customer_type, format: :json)
end
