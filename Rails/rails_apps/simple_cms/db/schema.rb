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

ActiveRecord::Schema[7.0].define(version: 2022_03_14_050728) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_histories", force: :cascade do |t|
    t.text "account_status"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_histories_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_type"
    t.integer "account_number"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actresses", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.integer "page_count"
    t.date "published_on"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "processed", default: true
    t.string "title"
    t.integer "year_published"
    t.decimal "price"
    t.boolean "out_of_print"
    t.integer "views"
    t.bigint "supplier_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "books_orders", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_books_orders_on_book_id"
    t.index ["order_id"], name: "index_books_orders_on_order_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars_and_spare_parts", force: :cascade do |t|
    t.bigint "car_id"
    t.bigint "spare_part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_cars_and_spare_parts_on_car_id"
    t.index ["spare_part_id"], name: "index_cars_and_spare_parts_on_spare_part_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.integer "visits"
    t.integer "orders_count"
    t.integer "lock_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_subjects", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["employee_id", "subject_id"], name: "index_employees_subjects_on_employee_id_and_subject_id"
    t.index ["subject_id", "employee_id"], name: "index_employees_subjects_on_subject_id_and_employee_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.integer "budget"
    t.datetime "released_on"
    t.bigint "actor_id"
    t.bigint "actress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_films_on_actor_id"
    t.index ["actress_id"], name: "index_films_on_actress_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date_submitted"
    t.integer "status"
    t.decimal "subtotal", precision: 5, scale: 2
    t.decimal "shipping", precision: 5, scale: 2
    t.decimal "tax", precision: 5, scale: 2
    t.decimal "total", precision: 5, scale: 2
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
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
    t.integer "subject_id"
    t.index ["user_type", "user_id"], name: "index_pages_on_user"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "rating"
    t.integer "state"
    t.bigint "customer_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
  end

  create_table "set_employees", force: :cascade do |t|
    t.string "name"
    t.float "salary"
    t.text "address"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "email"
  end

  create_table "spare_parts", force: :cascade do |t|
    t.string "part_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "vehicles", force: :cascade do |t|
    t.string "color"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_workers_on_manager_id"
  end

  add_foreign_key "account_histories", "accounts"
  add_foreign_key "accounts", "suppliers"
  add_foreign_key "books", "suppliers"
  add_foreign_key "films", "actors"
  add_foreign_key "films", "actresses"
  add_foreign_key "orders", "customers"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "customers"
  add_foreign_key "subjects", "users"
  add_foreign_key "users", "subjects"
  add_foreign_key "workers", "workers", column: "manager_id"
end
