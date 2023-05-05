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

ActiveRecord::Schema[7.0].define(version: 2023_05_05_100741) do
  create_table "carros", force: :cascade do |t|
    t.string "nome"
    t.integer "marca_id", null: false
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_carros_on_marca_id"
  end

  create_table "item_pedidos", force: :cascade do |t|
    t.integer "pedido_id", null: false
    t.integer "carro_id", null: false
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carro_id"], name: "index_item_pedidos_on_carro_id"
    t.index ["pedido_id"], name: "index_item_pedidos_on_pedido_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "client_id"
    t.float "valor_total"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "carros", "marcas"
  add_foreign_key "item_pedidos", "carros"
  add_foreign_key "item_pedidos", "pedidos"
end
