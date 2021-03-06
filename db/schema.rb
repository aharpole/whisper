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

ActiveRecord::Schema.define(version: 20150501172613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree

  create_table "memberships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "member_id"
    t.integer  "room_id"
  end

  add_index "memberships", ["member_id"], name: "index_memberships_on_member_id", using: :btree
  add_index "memberships", ["room_id"], name: "index_memberships_on_room_id", using: :btree

  create_table "responses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "detail"
    t.integer  "topic_id"
  end

  add_index "responses", ["topic_id"], name: "index_responses_on_topic_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug",       null: false
  end

  add_index "rooms", ["slug"], name: "index_rooms_on_slug", unique: true, using: :btree

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "title"
    t.text     "detail"
    t.integer  "room_id"
    t.boolean  "email_to_room", default: false
  end

  add_index "topics", ["room_id"], name: "index_topics_on_room_id", using: :btree

end
