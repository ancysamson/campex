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

ActiveRecord::Schema.define(version: 20150819060139) do

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

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
  add_foreign_key "terms", "batches"
end
