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

ActiveRecord::Schema.define(version: 2019_11_20_201913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_intakes", force: :cascade do |t|
    t.bigint "user_id"
    t.string "meal_type"
    t.date "date"
    t.bigint "food_id"
    t.integer "serving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_daily_intakes_on_food_id"
    t.index ["user_id"], name: "index_daily_intakes_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "calorie"
    t.float "protein"
    t.float "fat"
    t.float "carbs"
    t.float "sugar"
    t.integer "serving_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.integer "age"
    t.string "gender"
    t.float "weight"
    t.float "height"
    t.string "image"
    t.string "username"
    t.integer "goal_calorie"
    t.float "goal_carbs"
    t.float "goal_fat"
    t.float "goal_sugar"
    t.float "goal_protein"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
