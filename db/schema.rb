# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_11_031443) do

  create_table "attributes", force: :cascade do |t|
    t.integer "attribute_ID"
    t.string "attribute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monster_cards", force: :cascade do |t|
    t.integer "monster_ID"
    t.string "name"
    t.string "description"
    t.float "atk"
    t.float "def"
    t.integer "level"
    t.integer "scale"
    t.integer "linkval"
    t.integer "race_id", null: false
    t.integer "attribute_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attribute_id"], name: "index_monster_cards_on_attribute_id"
    t.index ["race_id"], name: "index_monster_cards_on_race_id"
    t.index ["type_id"], name: "index_monster_cards_on_type_id"
  end

  create_table "races", force: :cascade do |t|
    t.integer "race_ID"
    t.string "race"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spell_cards", force: :cascade do |t|
    t.integer "spell_Id"
    t.string "name"
    t.string "description"
    t.integer "type_id", null: false
    t.integer "attribute_id", null: false
    t.integer "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attribute_id"], name: "index_spell_cards_on_attribute_id"
    t.index ["race_id"], name: "index_spell_cards_on_race_id"
    t.index ["type_id"], name: "index_spell_cards_on_type_id"
  end

  create_table "trap_cards", force: :cascade do |t|
    t.integer "trap_Id"
    t.string "name"
    t.string "description"
    t.integer "type_id", null: false
    t.integer "attribute_id", null: false
    t.integer "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attribute_id"], name: "index_trap_cards_on_attribute_id"
    t.index ["race_id"], name: "index_trap_cards_on_race_id"
    t.index ["type_id"], name: "index_trap_cards_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.integer "type_ID"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "monster_cards", "attributes"
  add_foreign_key "monster_cards", "races"
  add_foreign_key "monster_cards", "types"
  add_foreign_key "spell_cards", "attributes"
  add_foreign_key "spell_cards", "races"
  add_foreign_key "spell_cards", "types"
  add_foreign_key "trap_cards", "attributes"
  add_foreign_key "trap_cards", "races"
  add_foreign_key "trap_cards", "types"
end
