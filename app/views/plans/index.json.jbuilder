json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :start_date, :end_date
  json.url plan_url(plan, format: :json)
end
