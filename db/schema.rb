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

ActiveRecord::Schema.define(version: 20150218144146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customisations", force: true do |t|
    t.integer  "section_id"
    t.integer  "order_id"
    t.integer  "flavour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customisations", ["flavour_id"], name: "index_customisations_on_flavour_id", using: :btree
  add_index "customisations", ["order_id"], name: "index_customisations_on_order_id", using: :btree
  add_index "customisations", ["section_id"], name: "index_customisations_on_section_id", using: :btree

  create_table "flavours", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
    t.string   "image_name"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.float    "price"
    t.integer  "quantity"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "post_code"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
