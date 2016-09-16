json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :middle_name, :last_name, :address, :city, :shift, :preferred_time, :batch_id
  json.url user_url(user, format: :json)
end
