json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :views, :created_by_id
  json.url topic_url(topic, format: :json)
end
