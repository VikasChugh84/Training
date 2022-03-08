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

ActiveRecord::Schema[7.0].define(version: 2022_03_08_184555) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees_subjects", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["employee_id", "subject_id"], name: "index_employees_subjects_on_employee_id_and_subject_id"
    t.index ["subject_id", "employee_id"], name: "index_employees_subjects_on_subject_id_and_employee_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.boolean "visible"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price", precision: 5, scale: 2
    t.string "user_type", null: false
    t.bigint "user_id", null: false
    t.string "size"
    t.index ["user_type", "user_id"], name: "index_pages_on_user"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name"
  end

  create_table "set_employees", force: :cascade do |t|
    t.string "name"
    t.float "salary"
    t.text "address"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_subjects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.boolean "terms_and_conditions"
    t.boolean "is_end_user", default: true
  end

  add_foreign_key "subjects", "users"
  add_foreign_key "users", "subjects"
end
