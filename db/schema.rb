# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_09_15_131150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "streetNumber"
    t.string "add1"
    t.string "add2"
    t.string "city"
    t.string "postal"
    t.string "state"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.string "dish_name"
    t.integer "quantity"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id"
    t.bigint "dish_id"
    t.index ["customer_id"], name: "index_cart_items_on_customer_id"
    t.index ["dish_id"], name: "index_cart_items_on_dish_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "restaurant_id", null: false
    t.bigint "customer_address_id", null: false
    t.datetime "order_datetime"
    t.decimal "delivery_fee"
    t.decimal "total_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_address_id"], name: "index_carts_on_customer_address_id"
    t.index ["customer_id"], name: "index_carts_on_customer_id"
    t.index ["restaurant_id"], name: "index_carts_on_restaurant_id"
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuisines_restaurants", id: false, force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "cuisine_id", null: false
    t.index ["cuisine_id", "restaurant_id"], name: "index_cuisines_restaurants_on_cuisine_id_and_restaurant_id"
    t.index ["restaurant_id", "cuisine_id"], name: "index_cuisines_restaurants_on_restaurant_id_and_cuisine_id"
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.string "addType"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_cuisine_id"
    t.decimal "price"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurant_cuisines", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "cuisine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cuisine_id"], name: "index_restaurant_cuisines_on_cuisine_id"
    t.index ["restaurant_id"], name: "index_restaurant_cuisines_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.time "opening_hours"
    t.float "rating"
    t.string "contact_number"
    t.string "cost_for_2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_restaurants_on_slug", unique: true
  end

  add_foreign_key "cart_items", "customers"
  add_foreign_key "cart_items", "dishes"
  add_foreign_key "carts", "customer_addresses"
  add_foreign_key "carts", "customers"
  add_foreign_key "carts", "restaurants"
  add_foreign_key "restaurant_cuisines", "cuisines"
  add_foreign_key "restaurant_cuisines", "restaurants"
end
