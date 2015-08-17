json.array!(@batches) do |batch|
  json.extract! batch, :id, :name, :code, :start_date, :end_date, :active, :course_id
  json.url batch_url(batch, format: :json)
end
