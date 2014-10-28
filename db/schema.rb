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

ActiveRecord::Schema.define(version: 20141028192511) do

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "review"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender_id"
    t.integer  "shelf_id"
  end

  add_index "movies", ["gender_id"], name: "index_movies_on_gender_id", using: :btree
  add_index "movies", ["shelf_id"], name: "index_movies_on_shelf_id", using: :btree

  create_table "movies_rents", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "rent_id"
  end

  create_table "rents", force: true do |t|
    t.float    "price",        limit: 24
    t.datetime "date"
    t.datetime "preview_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_id"
  end

  add_index "rents", ["tenant_id"], name: "index_rents_on_tenant_id", using: :btree

  create_table "shelves", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender_id"
  end

  add_index "shelves", ["gender_id"], name: "index_shelves_on_gender_id", using: :btree

  create_table "tenants", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number", limit: 12
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
