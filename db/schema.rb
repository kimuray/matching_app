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

ActiveRecord::Schema.define(version: 2018_08_12_112100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matchings", force: :cascade do |t|
    t.bigint "sender_id", null: false
    t.bigint "receiver_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_matchings_on_receiver_id"
    t.index ["sender_id"], name: "index_matchings_on_sender_id"
  end

  create_table "not_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "target_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_user_id"], name: "index_not_likes_on_target_user_id"
    t.index ["user_id"], name: "index_not_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.integer "address", null: false
    t.integer "sex", null: false
    t.integer "height"
    t.integer "weight"
    t.text "self_introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "matchings", "users", column: "receiver_id"
  add_foreign_key "matchings", "users", column: "sender_id"
  add_foreign_key "not_likes", "users"
  add_foreign_key "not_likes", "users", column: "target_user_id"
end
