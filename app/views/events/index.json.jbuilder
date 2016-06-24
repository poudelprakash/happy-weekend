json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :audience_id, :latitude, :longitude, :date, :continuous
  json.url event_url(event, format: :json)
end
