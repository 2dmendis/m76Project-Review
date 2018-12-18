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

ActiveRecord::Schema.define(version: 2018_12_15_185343) do

  create_table "days", force: :cascade do |t|
    t.integer "date"
    t.integer "month_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_days_on_month_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "reoccur"
    t.string "reoccurType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "startMonth"
    t.integer "endDate"
    t.string "endMonth"
    t.integer "startDate"
  end

  create_table "months", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occurrences", force: :cascade do |t|
    t.integer "eventID"
    t.string "startMonthO"
    t.integer "startdateO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "endDateO"
    t.string "endMonthO"
    t.string "nameO"
    t.text "descriptionO"
  end

end
