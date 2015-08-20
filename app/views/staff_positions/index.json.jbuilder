json.array!(@staff_positions) do |staff_position|
  json.extract! staff_position, :id, :name, :category
  json.url staff_position_url(staff_position, format: :json)
end
