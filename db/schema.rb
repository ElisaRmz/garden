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

ActiveRecord::Schema.define(version: 20171102145247) do

  create_table "diaries", force: :cascade do |t|
    t.date "date"
    t.string "action"
    t.text "observation"
    t.integer "plantation_id"
    t.index ["plantation_id"], name: "index_diaries_on_plantation_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.text "definition"
  end

  create_table "lands", force: :cascade do |t|
    t.string "name"
    t.text "temperature"
  end

  create_table "pests", force: :cascade do |t|
    t.string "name"
    t.text "damage"
    t.text "beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group"
  end

  create_table "pests_plants", id: false, force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "pest_id", null: false
    t.index ["pest_id", "plant_id"], name: "index_pests_plants_on_pest_id_and_plant_id"
    t.index ["plant_id", "pest_id"], name: "index_pests_plants_on_plant_id_and_pest_id"
  end

  create_table "plantations", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "land_id"
    t.index ["land_id"], name: "index_plantations_on_land_id"
    t.index ["plant_id"], name: "index_plantations_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.boolean "edible"
    t.text "sun"
    t.text "water"
    t.integer "diameter"
    t.string "height"
    t.string "depth"
    t.string "positive"
    t.string "negative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "seed"
    t.text "grow"
    t.text "harvest"
    t.string "volume"
    t.string "temperature"
    t.integer "tallness"
    t.integer "family_id"
    t.text "note"
    t.text "works_note"
    t.integer "temperature_max"
    t.integer "temperature_min"
    t.index ["family_id"], name: "index_plants_on_family_id"
  end

end
