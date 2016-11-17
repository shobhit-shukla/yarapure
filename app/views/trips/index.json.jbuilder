json.array!(@trips) do |trip|
  json.extract! trip, :id, :vehicle_id, :driver1_id, :driver2_id, :product_id, :aasm_state
  json.url trip_url(trip, format: :json)
end
