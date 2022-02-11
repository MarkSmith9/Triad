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

ActiveRecord::Schema[7.0].define(version: 2022_02_11_103320) do
  create_table "customer_orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "supplier_id", null: false
    t.string "deliver_address"
    t.string "postcode"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_orders_on_customer_id"
    t.index ["supplier_id"], name: "index_customer_orders_on_supplier_id"
  end

  create_table "customer_pharmacy_orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "pharmacy_id", null: false
    t.date "date"
    t.boolean "collected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_pharmacy_orders_on_customer_id"
    t.index ["pharmacy_id"], name: "index_customer_pharmacy_orders_on_pharmacy_id"
  end

  create_table "customers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.string "nhs_number"
    t.string "postcode"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacies", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "deliver_address"
    t.string "postcode"
    t.integer "stock"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacy_orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "pharmacy_id", null: false
    t.bigint "supplier_id", null: false
    t.integer "amount"
    t.integer "status"
    t.string "delivery_address"
    t.string "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_pharmacy_orders_on_pharmacy_id"
    t.index ["supplier_id"], name: "index_pharmacy_orders_on_supplier_id"
  end

  create_table "supplier_orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.string "delivery_address"
    t.string "postcode"
    t.integer "amount"
    t.date "deliver_date"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_supplier_orders_on_supplier_id"
  end

  create_table "suppliers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "password_digest"
    t.string "name"
    t.string "deliver_address"
    t.string "postcode"
    t.integer "stock"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_orders", "customers"
  add_foreign_key "customer_orders", "suppliers"
  add_foreign_key "customer_pharmacy_orders", "customers"
  add_foreign_key "customer_pharmacy_orders", "pharmacies"
  add_foreign_key "pharmacy_orders", "pharmacies"
  add_foreign_key "pharmacy_orders", "suppliers"
  add_foreign_key "supplier_orders", "suppliers"
end
