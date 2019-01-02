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

ActiveRecord::Schema.define(version: 2018_12_24_112612) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rule_id"
    t.integer "period_id"
    t.index ["period_id"], name: "index_events_on_period_id"
    t.index ["rule_id"], name: "index_events_on_rule_id"
  end

  create_table "events_students", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "student_id", null: false
    t.index ["event_id", "student_id"], name: "index_events_students_on_event_id_and_student_id"
    t.index ["student_id", "event_id"], name: "index_events_students_on_student_id_and_event_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string "school_name"
    t.string "manager"
    t.string "chairman"
    t.string "member1"
    t.string "member2"
    t.string "member3"
    t.string "member4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string "item_number"
    t.text "law"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "id_number"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
