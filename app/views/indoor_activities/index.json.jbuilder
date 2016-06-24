json.array!(@indoor_activities) do |indoor_activity|
  json.extract! indoor_activity, :id, :name, :description, :release_date
  json.url indoor_activity_url(indoor_activity, format: :json)
end
