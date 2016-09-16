json.array!(@cities) do |city|
  json.extract! city, :id, :name, :state_id, :abbreviation
  json.url city_url(city, format: :json)
end
