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

ActiveRecord::Schema.define(version: 20170429144147) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_addresses_on_country_id", using: :btree
    t.index ["state_id"], name: "index_addresses_on_state_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "list_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_list_categories_on_category_id", using: :btree
    t.index ["list_id"], name: "index_list_categories_on_list_id", using: :btree
  end

  create_table "lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lists_on_user_id", using: :btree
  end

  create_table "microposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "picture"
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree
    t.index ["user_id"], name: "index_microposts_on_user_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.string   "fournisseur"
    t.integer  "price"
    t.string   "format"
    t.integer  "unit_price",  default: 0
    t.boolean  "diabetic"
    t.integer  "category_id"
    t.integer  "store_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["store_id"], name: "index_products_on_store_id", using: :btree
  end

  create_table "providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_stores_on_address_id", using: :btree
  end

  create_table "sub_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "sous_category"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "language",          default: "fr"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "states"
  add_foreign_key "list_categories", "categories"
  add_foreign_key "list_categories", "lists"
  add_foreign_key "lists", "users"
  add_foreign_key "microposts", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "stores"
  add_foreign_key "stores", "addresses"
  add_foreign_key "sub_categories", "categories"
end
