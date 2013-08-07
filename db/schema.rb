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

ActiveRecord::Schema.define(version: 20130806224400) do

  create_table "conditions", force: true do |t|
    t.float    "air_temperature"
    t.float    "res_temperature"
    t.float    "PH"
    t.float    "EC"
    t.float    "humidity"
    t.integer  "ghouse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "CO2"
  end

  add_index "conditions", ["ghouse_id", "created_at"], name: "index_conditions_on_ghouse_id_and_created_at"

  create_table "ghouses", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
