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

ActiveRecord::Schema.define(version: 20160108213406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias", force: :cascade do |t|
    t.string   "slug"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directorios", force: :cascade do |t|
    t.string   "slug"
    t.string   "foto_perfil"
    t.string   "foto_portada"
    t.string   "nombre"
    t.text     "descripcion_corta"
    t.text     "descripcion_larga"
    t.string   "telefono"
    t.string   "celular"
    t.string   "correo"
    t.string   "pais"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "sitio_web"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "youtube"
    t.string   "latitud"
    t.string   "longitud"
    t.string   "codigo_qr"
    t.integer  "categoria_id"
    t.integer  "usuario_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "directorios", ["categoria_id"], name: "index_directorios_on_categoria_id", using: :btree
  add_index "directorios", ["usuario_id"], name: "index_directorios_on_usuario_id", using: :btree

  create_table "noticia_tiene_categorias", force: :cascade do |t|
    t.integer  "noticia_id"
    t.integer  "categoria_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "noticia_tiene_categorias", ["categoria_id"], name: "index_noticia_tiene_categorias_on_categoria_id", using: :btree
  add_index "noticia_tiene_categorias", ["noticia_id"], name: "index_noticia_tiene_categorias_on_noticia_id", using: :btree

  create_table "noticias", force: :cascade do |t|
    t.string   "slug"
    t.string   "titulo"
    t.string   "foto_portada"
    t.text     "contenido"
    t.string   "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "suscripciones", force: :cascade do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "precio"
    t.string   "estado"
    t.integer  "usuario_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "suscripciones", ["usuario_id"], name: "index_suscripciones_on_usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "rol"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "directorios", "categorias"
  add_foreign_key "directorios", "usuarios"
  add_foreign_key "noticia_tiene_categorias", "categorias"
  add_foreign_key "noticia_tiene_categorias", "noticias"
  add_foreign_key "suscripciones", "usuarios"
end
