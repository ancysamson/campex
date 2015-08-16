json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :course_type_id
  json.url course_url(course, format: :json)
end
