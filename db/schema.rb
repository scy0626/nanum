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

ActiveRecord::Schema.define(version: 20180823161733) do

  create_table "borrowres", force: :cascade do |t|
    t.string   "content"
    t.integer  "borrow_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrows", force: :cascade do |t|
    t.string   "item"
    t.string   "period"
    t.string   "price"
    t.string   "done"
    t.string   "content"
    t.string   "contact"
    t.string   "contactID"
    t.integer  "user_id"
    t.string   "image",      default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "communities", force: :cascade do |t|
    t.string   "head"
    t.string   "item"
    t.string   "content"
    t.string   "contact"
    t.string   "contactID"
    t.integer  "user_id"
    t.string   "image",      default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "communityres", force: :cascade do |t|
    t.string   "content"
    t.integer  "community_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "honeys", force: :cascade do |t|
    t.string   "image",      default: ""
    t.string   "item"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "honey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketres", force: :cascade do |t|
    t.string   "content"
    t.integer  "market_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string   "item"
    t.string   "unit"
    t.string   "price"
    t.string   "contact"
    t.string   "contactID"
    t.string   "done"
    t.string   "content"
    t.integer  "user_id"
    t.string   "image",      default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "withres", force: :cascade do |t|
    t.string   "content"
    t.integer  "with_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "withs", force: :cascade do |t|
    t.string   "item"
    t.string   "deadline"
    t.string   "deadlineH"
    t.string   "deadlineM"
    t.integer  "num"
    t.integer  "remain"
    t.string   "price"
    t.string   "done"
    t.string   "content"
    t.string   "contact"
    t.string   "contactID"
    t.integer  "user_id"
    t.string   "image",      default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
