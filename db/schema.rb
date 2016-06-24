# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160624143939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audiences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audiences_indoor_activities", id: false, force: :cascade do |t|
    t.integer "audience_id"
    t.integer "indoor_activity_id"
  end

  add_index "audiences_indoor_activities", ["audience_id"], name: "index_audiences_indoor_activities_on_audience_id", using: :btree
  add_index "audiences_indoor_activities", ["indoor_activity_id"], name: "index_audiences_indoor_activities_on_indoor_activity_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_indoor_activities", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "indoor_activity_id"
  end

  add_index "categories_indoor_activities", ["category_id"], name: "index_categories_indoor_activities_on_category_id", using: :btree
  add_index "categories_indoor_activities", ["indoor_activity_id"], name: "index_categories_indoor_activities_on_indoor_activity_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "audience_id"
    t.integer  "category_id"
    t.float    "latitude"
    t.float    "longitude"
    t.date     "date"
    t.boolean  "continuous"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["audience_id"], name: "index_events_on_audience_id", using: :btree
  add_index "events", ["category_id"], name: "index_events_on_category_id", using: :btree

  create_table "indoor_activities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "events", "audiences"
  add_foreign_key "events", "categories"
end
