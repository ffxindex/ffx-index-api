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

ActiveRecord::Schema.define(version: 20160510043117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.string   "ability_type"
    t.integer  "item_id"
    t.integer  "item_amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "effect"
    t.string   "slug"
  end

  add_index "abilities", ["item_id"], name: "index_abilities_on_item_id", using: :btree

  create_table "bribe_drops", force: :cascade do |t|
    t.integer  "monster_id"
    t.integer  "item_id"
    t.integer  "amount"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bribe_drops", ["item_id"], name: "index_bribe_drops_on_item_id", using: :btree
  add_index "bribe_drops", ["monster_id"], name: "index_bribe_drops_on_monster_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "effect"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "effect_type"
    t.string   "slug"
  end

  create_table "kill_drops", force: :cascade do |t|
    t.integer  "monster_id"
    t.integer  "item_id"
    t.integer  "amount"
    t.boolean  "rare",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "kill_drops", ["item_id"], name: "index_kill_drops_on_item_id", using: :btree
  add_index "kill_drops", ["monster_id"], name: "index_kill_drops_on_monster_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
    t.string   "slug"
  end

  add_index "monsters", ["location_id"], name: "index_monsters_on_location_id", using: :btree

  create_table "steal_drops", force: :cascade do |t|
    t.integer  "monster_id"
    t.integer  "item_id"
    t.integer  "amount"
    t.boolean  "rare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "steal_drops", ["item_id"], name: "index_steal_drops_on_item_id", using: :btree
  add_index "steal_drops", ["monster_id"], name: "index_steal_drops_on_monster_id", using: :btree

  add_foreign_key "abilities", "items"
  add_foreign_key "bribe_drops", "items"
  add_foreign_key "bribe_drops", "monsters"
  add_foreign_key "kill_drops", "items"
  add_foreign_key "kill_drops", "monsters"
  add_foreign_key "monsters", "locations"
  add_foreign_key "steal_drops", "items"
  add_foreign_key "steal_drops", "monsters"
end
