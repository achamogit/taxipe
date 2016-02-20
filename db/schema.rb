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

ActiveRecord::Schema.define(version: 20160220200136) do

  create_table "module_profiles", force: :cascade do |t|
    t.integer  "idmodulo",   limit: 4
    t.integer  "idprofile",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "modulos", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "status",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "status",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "states", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "vehicle_brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "vehicle_brand_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "vehicle_models", ["vehicle_brand_id"], name: "index_vehicle_models_on_vehicle_brand_id", using: :btree

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "vehicle_brand_id", limit: 4
    t.integer  "vehicle_model_id", limit: 4
    t.string   "placa",            limit: 255
    t.integer  "year",             limit: 4
    t.integer  "numberseat",       limit: 4
    t.integer  "vehicle_type_id",  limit: 4
    t.integer  "state_id",         limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "vehicles", ["state_id"], name: "index_vehicles_on_state_id", using: :btree
  add_index "vehicles", ["vehicle_brand_id"], name: "index_vehicles_on_vehicle_brand_id", using: :btree
  add_index "vehicles", ["vehicle_model_id"], name: "index_vehicles_on_vehicle_model_id", using: :btree
  add_index "vehicles", ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree

  add_foreign_key "vehicle_models", "vehicle_brands"
  add_foreign_key "vehicles", "states"
  add_foreign_key "vehicles", "vehicle_brands"
  add_foreign_key "vehicles", "vehicle_models"
  add_foreign_key "vehicles", "vehicle_types"
end
