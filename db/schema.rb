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

ActiveRecord::Schema.define(version: 2019_08_26_110735) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "family_name_sub", null: false
    t.string "last_name", null: false
    t.string "last_name_sub", null: false
    t.string "sex"
    t.string "birthday", null: false
    t.integer "add_no", null: false
    t.string "prefectures", null: false
    t.text "address", null: false
    t.integer "phone_no1", null: false
    t.integer "phone_no2", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
