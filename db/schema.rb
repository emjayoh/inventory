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

ActiveRecord::Schema.define(version: 20140331074856) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "serial"
    t.string   "location"
    t.integer  "lot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "receipt_id"
    t.integer  "shipment_id"
  end

  create_table "lots", force: true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "item_number"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receipts", force: true do |t|
    t.integer  "vendor_id"
    t.datetime "date"
    t.integer  "po_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schema_migrations_copy", id: false, force: true do |t|
    t.string "version", null: false
  end

  add_index "schema_migrations_copy", ["version"], name: "unique_schema_migrations", unique: true, using: :btree

  create_table "shipments", force: true do |t|
    t.integer  "customer_id"
    t.datetime "date"
    t.integer  "invoice_number"
    t.boolean  "is_returned"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
