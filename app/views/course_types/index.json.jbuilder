json.array!(@course_types) do |course_type|
  json.extract! course_type, :id, :name, :code, :department_id
  json.url course_type_url(course_type, format: :json)
end
