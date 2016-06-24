class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.references :audience, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.date :date
      t.boolean :continuous

      t.timestamps null: false
    end
  end
end
