class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.references :category, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
