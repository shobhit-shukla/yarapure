json.array!(@entries) do |entry|
  json.extract! entry, :id, :user_id, :product_id, :rate, :no_of_jars, :amount
  json.url entry_url(entry, format: :json)
end
