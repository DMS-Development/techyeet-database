# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_16_222015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries_job_seekers", id: false, force: :cascade do |t|
    t.bigint "job_seeker_id", null: false
    t.bigint "industry_id", null: false
    t.index ["industry_id"], name: "index_industries_job_seekers_on_industry_id"
    t.index ["job_seeker_id"], name: "index_industries_job_seekers_on_job_seeker_id"
  end

  create_table "job_seekers", force: :cascade do |t|
    t.string "available_to_start"
    t.date "search_start_date"
    t.string "search_status"
    t.integer "urgency"
    t.string "current_title"
    t.string "desired_role"
    t.text "work_experience"
    t.string "education_level"
    t.string "company_size_preference"
    t.boolean "willing_to_relocate"
    t.string "salary_range"
    t.text "unique_selling_point"
    t.text "success_stories"
    t.text "certifications"
    t.text "websites"
    t.string "resume_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_job_seekers_on_location_id"
    t.index ["user_id"], name: "index_job_seekers_on_user_id"
  end

  create_table "job_seekers_skills", id: false, force: :cascade do |t|
    t.bigint "job_seeker_id", null: false
    t.bigint "skill_id", null: false
    t.index ["job_seeker_id"], name: "index_job_seekers_skills_on_job_seeker_id"
    t.index ["skill_id"], name: "index_job_seekers_skills_on_skill_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "job_seekers", "locations"
  add_foreign_key "job_seekers", "users"
end
