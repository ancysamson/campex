json.array!(@staff_categories) do |staff_category|
  json.extract! staff_category, :id, :name, :code
  json.url staff_category_url(staff_category, format: :json)
end
