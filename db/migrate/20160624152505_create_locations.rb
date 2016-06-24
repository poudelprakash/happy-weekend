class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.references :category, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.time :opens_at
      t.time :closes_at

      t.timestamps null: false
    end
  end
end
