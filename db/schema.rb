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

ActiveRecord::Schema.define(version: 20151015212152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calidades", primary_key: "calidad_id", force: true do |t|
    t.integer  "valor"
    t.integer  "sla_id",      null: false
    t.integer  "contrato_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calidades", ["contrato_id"], name: "index_calidades_on_contrato_id", using: :btree
  add_index "calidades", ["sla_id"], name: "index_calidades_on_sla_id", using: :btree

  create_table "categorias", primary_key: "categoria_id", force: true do |t|
    t.string   "nombre",      null: false
    t.text     "descripcion"
    t.integer  "laboral_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorias", ["laboral_id"], name: "index_categorias_on_laboral_id", using: :btree

  create_table "comunas", primary_key: "comuna_id", force: true do |t|
    t.string   "nombre",     null: false
    t.string   "region",     null: false
    t.string   "pais",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", primary_key: "contrato_id", force: true do |t|
    t.integer  "prestador",       null: false
    t.string   "nombre",          null: false
    t.text     "descripcion"
    t.datetime "fechaInicio"
    t.datetime "fechaFin"
    t.text     "clausulaTermino"
    t.integer  "evalucion"
    t.integer  "valorservicio"
    t.integer  "comision"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contratos", ["usuario_id"], name: "index_contratos_on_usuario_id", using: :btree

  create_table "direcciones", primary_key: "direccion_id", force: true do |t|
    t.string   "direccion",   null: false
    t.integer  "numero",      null: false
    t.string   "complemento"
    t.integer  "codPostal"
    t.integer  "comuna_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "direcciones", ["comuna_id"], name: "index_direcciones_on_comuna_id", using: :btree

  create_table "empresas", primary_key: "rut", force: true do |t|
    t.string   "nombre",           null: false
    t.string   "acronimo"
    t.string   "rubro",            null: false
    t.string   "rutrepresentante", null: false
    t.string   "email",            null: false
    t.integer  "telefono_id"
    t.integer  "direccion_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empresas", ["direccion_id"], name: "index_empresas_on_direccion_id", using: :btree
  add_index "empresas", ["telefono_id"], name: "index_empresas_on_telefono_id", using: :btree
  add_index "empresas", ["usuario_id"], name: "index_empresas_on_usuario_id", using: :btree

  create_table "experiencias", primary_key: "experiencia_id", force: true do |t|
    t.datetime "fechaInicio", null: false
    t.datetime "fechaFin",    null: false
    t.string   "rubro",       null: false
    t.string   "cargo",       null: false
    t.text     "descripcion"
    t.integer  "laboral_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiencias", ["empresa_id"], name: "index_experiencias_on_empresa_id", using: :btree
  add_index "experiencias", ["laboral_id"], name: "index_experiencias_on_laboral_id", using: :btree

  create_table "habilidades", primary_key: "habilidad_id", force: true do |t|
    t.string   "nombre",      null: false
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "habilidades", ["usuario_id"], name: "index_habilidades_on_usuario_id", using: :btree

  create_table "laborales", primary_key: "datoslaborales_id", force: true do |t|
    t.string   "correo",        null: false
    t.integer  "telefono_id"
    t.datetime "fechacontrato", null: false
    t.text     "descripcion",   null: false
    t.integer  "direccion_id"
    t.integer  "usuario_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "laborales", ["direccion_id"], name: "index_laborales_on_direccion_id", using: :btree
  add_index "laborales", ["empresa_id"], name: "index_laborales_on_empresa_id", using: :btree
  add_index "laborales", ["telefono_id"], name: "index_laborales_on_telefono_id", using: :btree
  add_index "laborales", ["usuario_id"], name: "index_laborales_on_usuario_id", using: :btree

  create_table "perfiles", primary_key: "perfil_id", force: true do |t|
    t.string   "nombre",      null: false
    t.text     "descripcion"
    t.integer  "usuario_id",  null: false
    t.integer  "permisos_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "perfiles", ["permisos_id"], name: "index_perfiles_on_permisos_id", using: :btree
  add_index "perfiles", ["usuario_id"], name: "index_perfiles_on_usuario_id", using: :btree

  create_table "permisos", primary_key: "permisos_id", force: true do |t|
    t.string   "tipo",        null: false
    t.text     "descripcion"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permisos", ["perfil_id"], name: "index_permisos_on_perfil_id", using: :btree

  create_table "slas", primary_key: "sla_id", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "porcentajeImportacia"
    t.string   "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socios", primary_key: "socio_id", force: true do |t|
    t.string   "cargo",       null: false
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "socios", ["usuario_id"], name: "index_socios_on_usuario_id", using: :btree

  create_table "telefonos", primary_key: "telefono_id", force: true do |t|
    t.integer  "codpais",    null: false
    t.integer  "codciudad",  null: false
    t.integer  "numero",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicaciones", primary_key: "ubicacion_id", force: true do |t|
    t.string   "longitud",   null: false
    t.string   "latitud",    null: false
    t.datetime "fecha",      null: false
    t.integer  "usuario_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubicaciones", ["usuario_id"], name: "index_ubicaciones_on_usuario_id", using: :btree

  create_table "usuarios", primary_key: "usuario_id", force: true do |t|
    t.string   "correo",          null: false
    t.string   "nombreUsuario",   null: false
    t.string   "claveUsuario",    null: false
    t.string   "nombre",          null: false
    t.string   "apellido",        null: false
    t.string   "genero"
    t.datetime "fechaNacimiento"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "youtube"
    t.integer  "telefono_id"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["direccion_id"], name: "index_usuarios_on_direccion_id", using: :btree
  add_index "usuarios", ["telefono_id"], name: "index_usuarios_on_telefono_id", using: :btree

end
