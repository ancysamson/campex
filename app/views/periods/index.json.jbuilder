json.array!(@periods) do |period|
  json.extract! period, :id, :name, :start_time, :end_time, :is_break, :class_timing_id
  json.url period_url(period, format: :json)
end
