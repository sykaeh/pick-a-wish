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

ActiveRecord::Schema.define(version: 20151213170712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.boolean  "public",     default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "groups_lists", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "list_id"
  end

  add_index "groups_lists", ["group_id"], name: "index_groups_lists_on_group_id", using: :btree
  add_index "groups_lists", ["list_id"], name: "index_groups_lists_on_list_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "list_id"
    t.datetime "claimed_on"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "claimed_by_id"
    t.boolean  "bought",        default: false
  end

  add_index "items", ["claimed_by_id"], name: "index_items_on_claimed_by_id", using: :btree
  add_index "items", ["list_id"], name: "index_items_on_list_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "date"
  end

  create_table "lists_users", id: false, force: :cascade do |t|
    t.integer "list_id"
    t.integer "user_id"
  end

  add_index "lists_users", ["list_id"], name: "index_lists_users_on_list_id", using: :btree
  add_index "lists_users", ["user_id"], name: "index_lists_users_on_user_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.string   "email"
    t.datetime "invited"
    t.datetime "accepted"
    t.datetime "declined"
    t.boolean  "active",   default: false, null: false
  end

  add_index "members", ["group_id"], name: "index_members_on_group_id", using: :btree
  add_index "members", ["user_id"], name: "index_members_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "items", "lists"
end
