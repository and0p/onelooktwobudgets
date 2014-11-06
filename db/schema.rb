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

ActiveRecord::Schema.define(version: 20141106024902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budget_items", force: true do |t|
    t.integer  "budget_id"
    t.integer  "item_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgets", force: true do |t|
    t.integer  "author_id"
    t.integer  "look_id"
    t.text     "description"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "original"
    t.decimal  "msrp",        precision: 8, scale: 2
  end

  create_table "item_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_categories", ["name"], name: "index_item_categories_on_name", unique: true, using: :btree

  create_table "item_colors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_colors", ["name"], name: "index_item_colors_on_name", unique: true, using: :btree

  create_table "items", force: true do |t|
    t.string   "sku"
    t.string   "name"
    t.decimal  "msrp"
    t.decimal  "price"
    t.integer  "color_hex"
    t.boolean  "sale"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.integer  "item_category_id"
    t.integer  "primary_color_id"
    t.integer  "secondary_color_id"
  end

  create_table "looks", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "popularity"
    t.integer  "author_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "original"
    t.integer  "primary_id"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.integer  "author_id"
    t.integer  "uses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
