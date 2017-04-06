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

ActiveRecord::Schema.define(version: 20170405234716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "broodmares", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "color"
    t.string   "registry_tattoo"
    t.string   "link_to_pedigree_url"
    t.string   "img_url"
    t.integer  "stallion_id",           null: false
    t.boolean  "barren"
    t.integer  "num_foals"
    t.boolean  "in_foal_now"
    t.date     "expected_foaling_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["stallion_id"], name: "index_broodmares_on_stallion_id", using: :btree
  end

  create_table "foals", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.date     "foaling_date"
    t.string   "color"
    t.string   "markings"
    t.string   "registry_tattoo"
    t.string   "link_to_pedigree_url"
    t.string   "img_url"
    t.integer  "stallion_id"
    t.string   "birthplace"
    t.integer  "broodmare_id",         null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["broodmare_id"], name: "index_foals_on_broodmare_id", using: :btree
  end

  create_table "stallions", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "color"
    t.string   "registry_tattoo"
    t.string   "link_to_pedigree_url"
    t.string   "img_url"
    t.decimal  "stud_fee"
    t.integer  "stakes_winner_progeny"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
