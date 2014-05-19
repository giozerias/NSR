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

ActiveRecord::Schema.define(version: 20140517001953) do

  create_table "matches", force: true do |t|
    t.integer  "hero_a_id"
    t.integer  "hero_b_id"
    t.integer  "hero_a_score"
    t.integer  "hero_b_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "superheros", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "superpower"
    t.decimal  "superscore", precision: 1, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "match_id"
  end

end
