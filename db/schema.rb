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

ActiveRecord::Schema.define(version: 20180305062440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instrument_in_shops", force: :cascade do |t|
    t.string "date"
    t.integer "numberDoc"
    t.string "nameCompany"
    t.integer "collInstrument"
    t.float "sumAll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "type_name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sell_instrument_for_customers", force: :cascade do |t|
    t.string "dateSell"
    t.integer "collInstrumentSell"
    t.float "sum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
