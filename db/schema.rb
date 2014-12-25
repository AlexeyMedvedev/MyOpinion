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

ActiveRecord::Schema.define(version: 20141225022330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "added_items", force: true do |t|
    t.integer  "entertainment_id"
    t.string   "entertainment_type"
    t.integer  "user_id"
    t.integer  "comment_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "added_items", ["comment_id"], name: "index_added_items_on_comment_id", using: :btree
  add_index "added_items", ["entertainment_id", "entertainment_type"], name: "index_added_items_on_entertainment_id_and_entertainment_type", using: :btree
  add_index "added_items", ["user_id"], name: "index_added_items_on_user_id", using: :btree

  create_table "books", force: true do |t|
    t.string   "name"
    t.text     "author"
    t.string   "janra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "added_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "adress"
    t.string   "phone"
    t.text     "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "films", force: true do |t|
    t.string   "name"
    t.text     "directed"
    t.text     "janra"
    t.string   "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.text     "adress"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "platform"
    t.string   "janra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musics", force: true do |t|
    t.string   "name"
    t.text     "singer"
    t.string   "janra"
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
    t.string   "name"
    t.datetime "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
