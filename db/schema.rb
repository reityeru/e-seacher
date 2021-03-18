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

ActiveRecord::Schema.define(version: 2021_03_18_095525) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "prefecture_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "main_user_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment", null: false
    t.bigint "main_user_id"
    t.bigint "main_user_tweet_id"
    t.bigint "shop_user_tweet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["main_user_id"], name: "index_main_user_comments_on_main_user_id"
    t.index ["main_user_tweet_id"], name: "index_main_user_comments_on_main_user_tweet_id"
    t.index ["shop_user_tweet_id"], name: "index_main_user_comments_on_shop_user_tweet_id"
  end

  create_table "main_user_tweet_payment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "main_user_tweet_id"
    t.bigint "payment_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["main_user_tweet_id"], name: "index_main_user_tweet_payment_types_on_main_user_tweet_id"
    t.index ["payment_type_id"], name: "index_main_user_tweet_payment_types_on_payment_type_id"
  end

  create_table "main_user_tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shop_name", null: false
    t.text "text", null: false
    t.integer "prefecture_id", null: false
    t.integer "city_id", null: false
    t.integer "genre_id", null: false
    t.string "take_out"
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

  create_table "payment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "payment_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shop_user_payment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "shop_user_id"
    t.bigint "payment_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_type_id"], name: "index_shop_user_payment_types_on_payment_type_id"
    t.index ["shop_user_id"], name: "index_shop_user_payment_types_on_shop_user_id"
  end

  create_table "shop_user_tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "shop_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_user_id"], name: "index_shop_user_tweets_on_shop_user_id"
  end

  create_table "shop_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shop_name", null: false
    t.string "phone_number", null: false
    t.string "postal_code", null: false
    t.integer "prefecture_id", null: false
    t.integer "city_id", null: false
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "main_user_comments", "main_user_tweets"
  add_foreign_key "main_user_comments", "main_users"
  add_foreign_key "main_user_comments", "shop_user_tweets"
  add_foreign_key "main_user_tweet_payment_types", "main_user_tweets"
  add_foreign_key "main_user_tweet_payment_types", "payment_types"
  add_foreign_key "main_user_tweets", "main_users"
  add_foreign_key "main_user_tweets", "shop_users"
  add_foreign_key "shop_user_payment_types", "payment_types"
  add_foreign_key "shop_user_payment_types", "shop_users"
  add_foreign_key "shop_user_tweets", "shop_users"
end
