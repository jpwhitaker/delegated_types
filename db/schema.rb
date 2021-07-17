# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_17_083118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "automobiles", force: :cascade do |t|
  end

  create_table "luxury_automobiles", force: :cascade do |t|
    t.boolean "leather_seats"
    t.integer "num_screens"
    t.string "custom_monogram"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "vehicles", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.integer "num_wheels"
    t.integer "num_doors"
    t.string "color"
    t.string "vehicleable_type"
    t.bigint "vehicleable_id"
    t.index ["user_id"], name: "index_vehicles_on_user_id"
    t.index ["vehicleable_type", "vehicleable_id"], name: "index_vehicles_on_vehicleable"
  end

end
