json.array!(@admin_addresses) do |admin_address|
  json.extract! admin_address, :id, :address1, :address2, :city_id, :zip_code, :active, :user_id
  json.url admin_address_url(admin_address, format: :json)
end
