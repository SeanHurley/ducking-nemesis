json.array!(@squares) do |square|
  json.extract! square, :id, :x, :y
  json.url square_url(square, format: :json)
end
