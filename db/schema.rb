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

ActiveRecord::Schema.define(version: 2023_01_03_184743) do

  create_table "cart_details", force: :cascade do |t|
    t.integer "user_id"
    t.float "total"
    t.index ["user_id"], name: "index_cart_details_on_user_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_detail_id"
    t.integer "quantity"
    t.string "size"
    t.index ["cart_detail_id"], name: "index_cart_items_on_cart_detail_id"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "category_name"
    t.string "category_description"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_description"
    t.boolean "active"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "product_category_id"
    t.string "image_address_front"
    t.string "image_address_back"
    t.string "image_address_insideout_front"
    t.string "image_address_insideout_back"
    t.text "brief_description"
    t.text "description"
    t.float "price"
    t.integer "quantity"
    t.integer "customer_type_id"
    t.index ["customer_type_id"], name: "index_products_on_customer_type_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.integer "review"
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "phone_number"
  end

end
