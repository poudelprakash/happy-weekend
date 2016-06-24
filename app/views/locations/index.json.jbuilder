json.array!(@locations) do |location|
  json.extract! location, :id, :name, :description, :audience_id, :category_id, :latitude, :longitude, :opens_at, :closes_at
  json.url location_url(location, format: :json)
end
