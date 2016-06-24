class AudiencesLocations < ActiveRecord::Migration
  create_table :audiences_locations, id: false do |t|
    t.belongs_to :audience, index: true
    t.belongs_to :location, index: true
  end
end
