json.array!(@staff_grades) do |staff_grade|
  json.extract! staff_grade, :id, :name, :priority, :max_periods_per_day, :max_periods_per_week
  json.url staff_grade_url(staff_grade, format: :json)
end
