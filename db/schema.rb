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

ActiveRecord::Schema.define(version: 20141001143553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.integer  "activity_group_id"
    t.integer  "activity_type_id"
    t.text     "mod"
    t.integer  "quantity"
    t.text     "unit"
    t.integer  "weight"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["activity_group_id"], name: "index_activities_on_activity_group_id", using: :btree

  create_table "activity_groups", force: true do |t|
    t.text     "type"
    t.text     "quantity"
    t.text     "change"
    t.integer  "change_quantity"
    t.integer  "order"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_groups", ["workout_id"], name: "index_activity_groups_on_workout_id", using: :btree

  create_table "activity_types", force: true do |t|
    t.string   "name"
    t.text     "mod_options", default: [], array: true
    t.text     "categories",  default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.text     "name"
    t.date     "date"
    t.text     "notes"
    t.text     "scoreType"
    t.text     "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
