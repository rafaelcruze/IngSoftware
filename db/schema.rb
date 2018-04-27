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

ActiveRecord::Schema.define(version: 20180427204047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comunas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "rut"
    t.date "fecha_nacimiento"
    t.integer "comuna_id"
    t.integer "nivel_educacional_id"
    t.integer "jornada_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
  end

  create_table "jornadas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivel_educacionals", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.integer "valor"
    t.date "fecha_pago"
    t.integer "tipo_pago_id"
    t.integer "estado_id"
    t.integer "estudiante_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_pagos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "rut"
    t.string "email"
    t.string "contraseña"
    t.date "fecha_nacimiento"
    t.string "direccion"
    t.integer "comuna_id"
    t.integer "tipo_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "estudiantes", "comunas"
  add_foreign_key "estudiantes", "jornadas"
  add_foreign_key "estudiantes", "nivel_educacionals"
  add_foreign_key "estudiantes", "usuarios"
  add_foreign_key "pagos", "estados"
  add_foreign_key "pagos", "estudiantes", column: "usuario_id"
  add_foreign_key "pagos", "tipo_pagos"
  add_foreign_key "pagos", "usuarios", column: "estudiante_id"
  add_foreign_key "usuarios", "comunas"
  add_foreign_key "usuarios", "tipo_usuarios"
end
