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

ActiveRecord::Schema.define(version: 2022_01_12_034901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hardwares", force: :cascade do |t|
    t.bigint "server_id", null: false
    t.string "category"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["server_id"], name: "index_hardwares_on_server_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "team"
  end

  create_table "server_people", force: :cascade do |t|
    t.bigint "server_id", null: false
    t.bigint "people_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["people_id"], name: "index_server_people_on_people_id"
    t.index ["server_id"], name: "index_server_people_on_server_id"
  end

  create_table "server_softwares", force: :cascade do |t|
    t.bigint "server_id", null: false
    t.bigint "software_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["server_id"], name: "index_server_softwares_on_server_id"
    t.index ["software_id"], name: "index_server_softwares_on_software_id"
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "model"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "category"
    t.date "expires_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "hardwares", "servers"
  add_foreign_key "server_people", "people", column: "people_id"
  add_foreign_key "server_people", "servers"
  add_foreign_key "server_softwares", "servers"
  add_foreign_key "server_softwares", "softwares"
end
