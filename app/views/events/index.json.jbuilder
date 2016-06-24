json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :audience_id, :category_id, :latitude, :longitude, :starts_at, :ends_at
  json.url event_url(event, format: :json)
end
