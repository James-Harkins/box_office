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

ActiveRecord::Schema.define(version: 2023_03_07_205934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_musicians_on_band_id"
  end

  create_table "shows", force: :cascade do |t|
    t.date "date"
    t.string "venue"
    t.integer "ticket_price"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_shows_on_band_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "buyer"
    t.integer "quantity"
    t.integer "cost"
    t.bigint "musician_id"
    t.bigint "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["musician_id"], name: "index_tickets_on_musician_id"
    t.index ["show_id"], name: "index_tickets_on_show_id"
  end

  add_foreign_key "musicians", "bands"
  add_foreign_key "shows", "bands"
  add_foreign_key "tickets", "musicians"
  add_foreign_key "tickets", "shows"
end
