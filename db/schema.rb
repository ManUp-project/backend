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

ActiveRecord::Schema.define(version: 2022_12_30_185011) do

  create_table "carts", force: :cascade do |t|
    t.integer "total"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "customer_type"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image_address"
    t.float "price"
    t.integer "quantity"
    t.integer "cart_id"
    t.integer "customer_id"
    t.integer "sport_id"
    t.integer "wetsuit_id"
    t.integer "customer_type_id"
    t.index ["cart_id"], name: "index_products_on_cart_id"
    t.index ["customer_id"], name: "index_products_on_customer_id"
    t.index ["sport_id"], name: "index_products_on_sport_id"
    t.index ["wetsuit_id"], name: "index_products_on_wetsuit_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "customer_id"
    t.integer "product_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
  end

  create_table "wetsuits", force: :cascade do |t|
    t.boolean "is_wetsuit"
    t.string "category"
  end

end
