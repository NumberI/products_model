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

ActiveRecord::Schema.define(version: 2019_08_25_233824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "how_dos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_how_dos_on_product_id"
  end

  create_table "how_ws", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_how_ws_on_product_id"
  end

  create_table "infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "picture"
    t.integer "ordernumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "described_type"
    t.bigint "described_id"
    t.index ["described_type", "described_id"], name: "index_infos_on_described_type_and_described_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_responses_on_product_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_roles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_roles_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "login"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "where_ws", force: :cascade do |t|
    t.string "domain", default: [], array: true
    t.string "wtype", default: [], array: true
    t.string "os", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_where_ws_on_product_id"
  end

  add_foreign_key "how_dos", "products"
  add_foreign_key "how_ws", "products"
  add_foreign_key "where_ws", "products"
end
