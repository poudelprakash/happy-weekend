class CategoriesIndoorActivities < ActiveRecord::Migration
  def change
    create_table :categories_indoor_activities, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :indoor_activity, index: true
    end
  end
end
