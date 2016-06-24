class CreateIndoorActivities < ActiveRecord::Migration
  def change
    create_table :indoor_activities do |t|
      t.string :name
      t.string :description
      t.datetime :release_date

      t.timestamps null: false
    end
  end
end
