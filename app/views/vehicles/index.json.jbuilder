json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :registration_no, :year, :make, :model
  json.url vehicle_url(vehicle, format: :json)
end
