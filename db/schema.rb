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

ActiveRecord::Schema.define(version: 2019_09_18_060620) do

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

  create_table "idea_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string "idea_title"
    t.integer "idea_amount"
    t.text "idea_about"
    t.string "idea_usage"
    t.text "idea_commit"
    t.string "product_image"
    t.string "idea_category"
    t.string "idea_category_details"
    t.string "product_about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_abouts", force: :cascade do |t|
    t.bigint "project_id"
    t.text "project_abouts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_abouts_on_project_id"
  end

  create_table "project_ideas", force: :cascade do |t|
    t.bigint "project_id"
    t.text "project_returns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_ideas_on_project_id"
  end

  create_table "project_images", force: :cascade do |t|
    t.bigint "project_id"
    t.text "project_logo"
    t.text "project_img"
    t.text "project_img_2"
    t.text "project_img_3"
    t.text "project_img_4"
    t.text "project_img_5"
    t.text "project_movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id"
  end

  create_table "project_reports", force: :cascade do |t|
    t.bigint "project_id"
    t.text "project_reports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_reports_on_project_id"
  end

  create_table "project_returns", force: :cascade do |t|
    t.bigint "project_id"
    t.string "return_title"
    t.text "return_item_img"
    t.integer "return_item_fund"
    t.integer "return_item_count"
    t.text "return_item_about"
    t.integer "return_item_sponsors"
    t.date "delivery_date"
    t.text "return_item_remark"
    t.text "return_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_returns_on_project_id"
  end

  create_table "project_sponsors", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "sponsors_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_sponsors_on_project_id"
  end

  create_table "project_values", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "target_fund"
    t.integer "project_fund"
    t.string "recruitment_method"
    t.datetime "recruitment_deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_values_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_title"
    t.text "project_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "select_genre_in_ideas", force: :cascade do |t|
    t.bigint "idea_id"
    t.bigint "idea_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idea_id"], name: "index_select_genre_in_ideas_on_idea_id"
    t.index ["idea_user_id"], name: "index_select_genre_in_ideas_on_idea_user_id"
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
  add_foreign_key "project_abouts", "projects"
  add_foreign_key "project_ideas", "projects"
  add_foreign_key "project_images", "projects"
  add_foreign_key "project_reports", "projects"
  add_foreign_key "project_returns", "projects"
  add_foreign_key "project_sponsors", "projects"
  add_foreign_key "project_values", "projects"
  add_foreign_key "select_genre_in_ideas", "idea_users"
  add_foreign_key "select_genre_in_ideas", "ideas"
  add_foreign_key "user_profiles", "users"
end
