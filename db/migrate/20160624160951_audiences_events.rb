class AudiencesEvents < ActiveRecord::Migration
  create_table :audiences_events, id: false do |t|
    t.belongs_to :audience, index: true
    t.belongs_to :event, index: true
  end
end
