json.array!(@states) do |state|
  json.extract! state, :id, :name, :country_id, :abbreviation
  json.url state_url(state, format: :json)
end
