json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :term_id, :start_date, :end_date
  json.url timetable_url(timetable, format: :json)
end
