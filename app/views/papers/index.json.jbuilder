json.array!(@papers) do |paper|
  json.extract! paper, :id, :name, :code, :paper_type_id, :term_id
  json.url paper_url(paper, format: :json)
end
