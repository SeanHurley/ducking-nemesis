json.array!(@pool_details) do |pool_detail|
  json.extract! pool_detail, :id, :axis_assignment, :position, :value
  json.url pool_detail_url(pool_detail, format: :json)
end
