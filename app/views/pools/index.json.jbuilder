json.array!(@pools) do |pool|
  json.extract! pool, :id, :name, :cost
  json.url pool_url(pool, format: :json)
end
