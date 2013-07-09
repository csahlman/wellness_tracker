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

ActiveRecord::Schema.define(version: 20130709165143) do

  create_table "food_entries", force: true do |t|
    t.integer  "time_period_id"
    t.integer  "user_id"
    t.string   "name"
    t.integer  "calories"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "food_entries", ["time_period_id"], name: "index_food_entries_on_time_period_id"
  add_index "food_entries", ["user_id"], name: "index_food_entries_on_user_id"

  create_table "time_periods", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "activity_type"
    t.integer  "tracker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_periods", ["tracker_id"], name: "index_time_periods_on_tracker_id"

  create_table "trackers", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "current_weight"
    t.integer  "goal_weight"
    t.integer  "happiness_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trackers", ["user_id"], name: "index_trackers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
