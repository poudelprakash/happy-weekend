class AudiencesIndoorActivities < ActiveRecord::Migration
  def change
    create_table :audiences_indoor_activities, id: false do |t|
      t.belongs_to :audience, index: true
      t.belongs_to :indoor_activity, index: true
    end
  end
end
