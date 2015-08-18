json.array!(@positions) do |position|
  json.extract! position, :id, :name, :category
  json.url position_url(position, format: :json)
end
