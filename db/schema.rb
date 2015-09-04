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

ActiveRecord::Schema.define(version: 20150903175526) do

  create_table "attorneys", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "connections", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "attorney_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "connections", ["attorney_id"], name: "index_connections_on_attorney_id"
  add_index "connections", ["contact_id"], name: "index_connections_on_contact_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "referral"
    t.string   "practice_area"
    t.text     "description"
    t.string   "employee"
    t.string   "impression"
    t.boolean  "called_back",   default: false
    t.datetime "called_at"
    t.boolean  "retained",      default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
