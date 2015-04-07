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

ActiveRecord::Schema.define(version: 20150405015248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "gift_givens", force: :cascade do |t|
    t.string   "gift_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "recipient_id"
    t.integer  "special_occasion_id"
  end

  add_index "gift_givens", ["recipient_id"], name: "index_gift_givens_on_recipient_id", using: :btree
  add_index "gift_givens", ["special_occasion_id"], name: "index_gift_givens_on_special_occasion_id", using: :btree

  create_table "recipients", force: :cascade do |t|
    t.string   "name"
    t.string   "relationship"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "special_occasions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "recipient"
    t.integer  "recipient_id"
  end

  add_index "special_occasions", ["recipient_id"], name: "index_special_occasions_on_recipient_id", using: :btree
  add_index "special_occasions", ["user_id"], name: "index_special_occasions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "user_name"
  end

  add_foreign_key "gift_givens", "recipients"
  add_foreign_key "gift_givens", "special_occasions"
  add_foreign_key "special_occasions", "recipients"
  add_foreign_key "special_occasions", "users"
end
