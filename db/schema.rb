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

ActiveRecord::Schema.define(version: 2021_12_07_024346) do

  create_table "albums", force: :cascade do |t|
    t.integer "alb_id"
    t.string "alb_name"
    t.integer "alb_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alb_id"], name: "index_albums_on_alb_id"
  end

  create_table "artists", force: :cascade do |t|
    t.integer "art_id"
    t.string "art_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_artists_on_art_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "sid"
    t.string "name"
    t.string "link"
    t.boolean "favourite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sid"], name: "index_songs_on_sid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_ID"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_ID"], name: "index_users_on_user_ID"
  end

end
