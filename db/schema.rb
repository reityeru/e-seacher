# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_10_013442) do

  create_table "main_user_tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shop_name", null: false
    t.text "text", null: false
    t.string "prefectures", null: false
    t.string "city", null: false
    t.integer "genres_id", null: false
    t.string "take_out", null: false
    t.bigint "main_user_id"
    t.bigint "shop_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["main_user_id"], name: "index_main_user_tweets_on_main_user_id"
    t.index ["shop_user_id"], name: "index_main_user_tweets_on_shop_user_id"
  end

  create_table "main_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "birthday", null: false
    t.string "gender", null: false
    t.string "phone_number", null: false
    t.text "profile"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_main_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_main_users_on_reset_password_token", unique: true
  end

  create_table "shop_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shop_name", null: false
    t.string "phone_number", null: false
    t.string "postal_code", null: false
    t.string "prefectures", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "building_name"
    t.text "profile"
    t.string "shop_link"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_shop_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_shop_users_on_reset_password_token", unique: true
  end

  add_foreign_key "main_user_tweets", "main_users"
  add_foreign_key "main_user_tweets", "shop_users"
end
