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

ActiveRecord::Schema.define(version: 20161017061141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.string   "image_url"
    t.integer  "section_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "userorder_id"
    t.index ["section_id"], name: "index_food_items_on_section_id", using: :btree
    t.index ["userorder_id"], name: "index_food_items_on_userorder_id", using: :btree
  end

  create_table "orderlists", force: :cascade do |t|
    t.string   "order_list"
    t.integer  "userorder_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["userorder_id"], name: "index_orderlists_on_userorder_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

  create_table "userorders", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "food_items", "sections"
  add_foreign_key "orderlists", "userorders"
end
