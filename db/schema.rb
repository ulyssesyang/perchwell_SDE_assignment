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

ActiveRecord::Schema.define(version: 2019_04_29_005132) do

  create_table "agents", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_agents_on_email"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.string "unit_number"
    t.integer "price"
    t.string "status"
    t.string "description"
    t.integer "bathroom_count"
    t.integer "bedroom_count"
    t.string "property_type"
    t.integer "square_feet"
    t.integer "total_rooms"
    t.string "agent_1"
    t.string "agent_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
