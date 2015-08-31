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

ActiveRecord::Schema.define(version: 20150831043314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "active"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "batches", ["course_id"], name: "index_batches_on_course_id", using: :btree

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.string   "subject_stucture"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "class_timings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "course_types", ["department_id"], name: "index_course_types_on_department_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "course_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "courses", ["course_type_id"], name: "index_courses_on_course_type_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paper_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "paper_type_id"
    t.integer  "term_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "papers", ["paper_type_id"], name: "index_papers_on_paper_type_id", using: :btree
  add_index "papers", ["term_id"], name: "index_papers_on_term_id", using: :btree

  create_table "papers_staffs", id: false, force: :cascade do |t|
    t.integer "paper_id"
    t.integer "staff_id"
  end

  add_index "papers_staffs", ["paper_id"], name: "index_papers_staffs_on_paper_id", using: :btree
  add_index "papers_staffs", ["staff_id"], name: "index_papers_staffs_on_staff_id", using: :btree

  create_table "periods", force: :cascade do |t|
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "is_break"
    t.integer  "class_timing_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "periods", ["class_timing_id"], name: "index_periods_on_class_timing_id", using: :btree

  create_table "staff_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_grades", force: :cascade do |t|
    t.string   "name"
    t.integer  "priority"
    t.integer  "max_periods_per_day"
    t.integer  "max_periods_per_week"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "staff_positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "staff_category_id"
  end

  add_index "staff_positions", ["staff_category_id"], name: "index_staff_positions_on_staff_category_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_joining"
    t.string   "email"
    t.string   "gender"
    t.date     "dob"
    t.integer  "department_id"
    t.integer  "staff_position_id"
    t.integer  "staff_grade_id"
    t.string   "qualification"
    t.text     "experience_info"
    t.integer  "experience_years"
    t.integer  "experience_months"
    t.string   "marital_status"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "spouse_name"
    t.string   "blood_group"
    t.string   "nationality"
    t.string   "address"
    t.string   "mobile_no"
    t.string   "bank_account_no"
    t.string   "pan_no"
    t.string   "adhaar_no"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "staffs", ["department_id"], name: "index_staffs_on_department_id", using: :btree
  add_index "staffs", ["staff_grade_id"], name: "index_staffs_on_staff_grade_id", using: :btree
  add_index "staffs", ["staff_position_id"], name: "index_staffs_on_staff_position_id", using: :btree

  create_table "terms", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "active"
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "terms", ["batch_id"], name: "index_terms_on_batch_id", using: :btree

  add_foreign_key "batches", "courses"
  add_foreign_key "course_types", "departments"
  add_foreign_key "courses", "course_types"
  add_foreign_key "papers", "paper_types"
  add_foreign_key "papers", "terms"
  add_foreign_key "papers_staffs", "papers"
  add_foreign_key "papers_staffs", "staffs"
  add_foreign_key "periods", "class_timings"
  add_foreign_key "staff_positions", "staff_categories"
  add_foreign_key "staffs", "departments"
  add_foreign_key "staffs", "staff_grades"
  add_foreign_key "staffs", "staff_positions"
  add_foreign_key "terms", "batches"
end
