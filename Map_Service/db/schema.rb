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

ActiveRecord::Schema.define(version: 20150309042521) do

  create_table "mapspaces", primary_key: "location_number", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "name",         limit: 255
    t.float    "latitude",     limit: 53
    t.float    "longitude",    limit: 53
    t.integer  "north_adjoin", limit: 4
    t.integer  "south_adjoin", limit: 4
    t.integer  "east_adjoin",  limit: 4
    t.integer  "west_adjoin",  limit: 4
    t.integer  "obstacle",     limit: 4
    t.integer  "opponent",     limit: 4
  end

end
