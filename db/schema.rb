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

ActiveRecord::Schema.define(version: 2020_01_26_001246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diseases", force: :cascade do |t|
    t.string "disease"
    t.text "bio"
    t.string "pic_url"
    t.boolean "contagious"
    t.integer "lethality"
    t.string "disease_class"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "disease_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disease_id"], name: "index_scores_on_disease_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "symptom"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "session_id"
    t.string "name"
    t.text "bio"
    t.string "pic_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weights", force: :cascade do |t|
    t.bigint "disease_id", null: false
    t.bigint "symptom_id", null: false
    t.integer "weighting"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disease_id"], name: "index_weights_on_disease_id"
    t.index ["symptom_id"], name: "index_weights_on_symptom_id"
  end

  add_foreign_key "scores", "diseases"
  add_foreign_key "scores", "users"
  add_foreign_key "weights", "diseases"
  add_foreign_key "weights", "symptoms"
end
