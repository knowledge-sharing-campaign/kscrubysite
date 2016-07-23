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

ActiveRecord::Schema.define(version: 20160723102558) do

  create_table "comments", force: :cascade do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "reply_to_id"
  end

  add_index "comments", ["reply_to_id"], name: "index_comments_on_reply_to_id"
  add_index "comments", ["topic_id"], name: "index_comments_on_topic_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.integer  "host_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "invites", force: :cascade do |t|
    t.integer  "attended_event_id"
    t.integer  "guest_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.integer  "views"
    t.integer  "created_by_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "topics", ["created_by_id"], name: "index_topics_on_created_by_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name",        null: false
    t.string   "last_name",         null: false
    t.string   "email",             null: false
    t.string   "username",          null: false
    t.string   "password",          null: false
    t.string   "contact_number"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.string   "current_address"
    t.string   "permanent_address"
    t.string   "country"
    t.string   "city"
    t.string   "course"
    t.string   "university"
    t.string   "source"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
    t.string   "role"
  end

end
