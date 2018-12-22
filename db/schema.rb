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

ActiveRecord::Schema.define(version: 20181222150449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name", default: " ", null: false
    t.string "last_name", default: " ", null: false
    t.integer "gender", null: false
    t.string "card_id", default: " ", null: false
    t.integer "id_type", default: 1, null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creditos", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "producto_id", null: false
    t.integer "plazo", null: false
    t.decimal "monto", default: "0.0", null: false
    t.integer "periodicidad", default: 3, null: false
    t.text "destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_creditos_on_client_id"
    t.index ["producto_id"], name: "index_creditos_on_producto_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre", default: " ", null: false
    t.decimal "tasa", default: "0.0", null: false
    t.integer "plazo", default: 1, null: false
    t.integer "tipo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "creditos", "clients"
  add_foreign_key "creditos", "productos"
end
