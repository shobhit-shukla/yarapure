json.array!(@admin_dispatchers) do |admin_dispatcher|
  json.extract! admin_dispatcher, :id
  json.url admin_dispatcher_url(admin_dispatcher, format: :json)
end
