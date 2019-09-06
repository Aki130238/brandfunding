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

ActiveRecord::Schema.define(version: 2019_09_06_071709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artisan_profiles", force: :cascade do |t|
    t.integer "workexp"
    t.integer "homeworkexp"
    t.string "skill"
    t.string "skill_free"
    t.integer "skill_exp"
    t.text "genre"
    t.string "genre_free"
    t.text "item"
    t.string "item_free"
    t.text "facillity"
    t.string "facillity_free"
    t.text "workexp_text"
    t.text "mypr"
    t.text "myprofile"
    t.text "work_status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_artisan_profiles_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "family_name"
    t.string "family_name_sub"
    t.string "last_name"
    t.string "last_name_sub"
    t.string "sex"
    t.string "birthday"
    t.string "add_no"
    t.string "prefectures"
    t.text "address"
    t.string "phone_no1"
    t.string "phone_no2"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  add_foreign_key "artisan_profiles", "users"
  add_foreign_key "user_profiles", "users"
end
