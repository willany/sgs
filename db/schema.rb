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

ActiveRecord::Schema.define(version: 20171107010130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cnpj"
    t.index ["cnpj"], name: "index_cities_on_cnpj", unique: true, using: :btree
  end

  create_table "holidays", force: :cascade do |t|
    t.date     "date"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["city_id"], name: "index_holidays_on_city_id", using: :btree
  end

  create_table "micro_areas", force: :cascade do |t|
    t.integer  "name"
    t.integer  "usf_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usf_id"], name: "index_micro_areas_on_usf_id", using: :btree
  end

  create_table "professional_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.string   "nome"
    t.integer  "professionalType_id"
    t.string   "crm"
    t.integer  "specialty_id"
    t.string   "coren"
    t.string   "matricula"
    t.integer  "microArea_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["microArea_id"], name: "index_professionals_on_microArea_id", using: :btree
    t.index ["professionalType_id"], name: "index_professionals_on_professionalType_id", using: :btree
    t.index ["specialty_id"], name: "index_professionals_on_specialty_id", using: :btree
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usfs", force: :cascade do |t|
    t.string   "nome"
    t.string   "nome_fantasia"
    t.string   "cnpj"
    t.integer  "cnes"
    t.string   "telefone"
    t.string   "bairro"
    t.string   "cep"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "ponto_de_referencia"
    t.integer  "city_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "area"
    t.index ["city_id"], name: "index_usfs_on_city_id", using: :btree
  end

end
