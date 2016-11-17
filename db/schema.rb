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

ActiveRecord::Schema.define(version: 20161116173532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city_id"
    t.string   "zip_code"
    t.boolean  "active"
    t.string   "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "addressable_id"
    t.string   "addressable_type"
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "brands", ["name"], name: "index_brands_on_name", unique: true, using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state_id"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "custom_auto_increments", force: :cascade do |t|
    t.string   "counter_model_name"
    t.integer  "counter",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custom_auto_increments", ["counter_model_name"], name: "index_custom_auto_increments_on_counter_model_name", using: :btree

  create_table "customer_details", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "customer_type_id"
    t.integer  "plan_id"
    t.string   "shift"
    t.integer  "days_type"
    t.time     "preferred_time"
    t.date     "start_date"
    t.float    "deposit_amount"
    t.integer  "rate"
    t.integer  "quantity"
    t.integer  "product_id"
    t.boolean  "is_order",            default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "order_id"
    t.float    "prepaid_amount"
    t.float    "registration_amount"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "dept_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_details", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "department_id"
    t.string   "designation"
    t.string   "grade"
    t.integer  "reporting_user_id"
    t.float    "salary"
    t.string   "previous_company"
    t.float    "previous_salary"
    t.string   "previous_designation"
    t.date     "joining_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "user_id"
    t.string   "product_id"
    t.float    "rate"
    t.integer  "no_of_jars"
    t.float    "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "empty"
    t.string   "filled"
    t.float    "amount_paid"
    t.integer  "driver1"
    t.integer  "driver2"
    t.string   "total_amount"
    t.text     "remark"
    t.integer  "collected_by"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "payment_mode"
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.string   "bank"
    t.datetime "cheque_date"
    t.float    "total_dues"
    t.text     "remark"
    t.string   "cheque_no"
    t.float    "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "keywords"
    t.boolean  "featured"
    t.boolean  "active"
    t.string   "brand_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "rate"
    t.integer  "quantity"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "country_id"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "driver1_id"
    t.integer  "driver2_id"
    t.integer  "product_id"
    t.string   "aasm_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "empty"
    t.integer  "filled"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "type"
    t.string   "secondary_phone"
    t.string   "phone"
    t.string   "avatar"
    t.integer  "parent_id"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "registration_no"
    t.string   "year"
    t.string   "make"
    t.string   "model"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
