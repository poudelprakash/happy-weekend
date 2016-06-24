class CategoriesLocations < ActiveRecord::Migration
  create_table :categories_locations, id: false do |t|
    t.belongs_to :category, index: true
    t.belongs_to :location, index: true
  end
end
