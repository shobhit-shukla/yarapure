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

ActiveRecord::Schema.define(version: 20160921151226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city_id"
    t.string   "zip_code"
    t.boolean  "active"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "employee_details", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "department"
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

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address_id"
    t.string   "shift"
    t.time     "preferred_time"
    t.string   "batch_id"
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
    t.integer  "plan_id"
    t.integer  "product_id"
    t.string   "phone"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
