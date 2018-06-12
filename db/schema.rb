# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180608150459) do

  create_table "cuentos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "autor"
    t.string   "nacionalidad"
    t.string   "region"
    t.string   "editorial"
    t.string   "isbn"
    t.text     "personaje"
    t.text     "tema"
    t.text     "version"
    t.string   "archivo"
    t.integer  "tipo_id"
    t.integer  "subtipo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cuentos", ["subtipo_id"], name: "index_cuentos_on_subtipo_id"
  add_index "cuentos", ["tipo_id"], name: "index_cuentos_on_tipo_id"

  create_table "subtipos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "tipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subtipos", ["tipo_id"], name: "index_subtipos_on_tipo_id"

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
