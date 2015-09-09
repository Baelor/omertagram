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

ActiveRecord::Schema.define(version: 20150909232073) do

  create_table "chats", force: :cascade do |t|
    t.integer  "telegram_id"
    t.boolean  "news"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "text"
    t.datetime "posted_at"
    t.integer  "news_source"
    t.string   "news_source_reference"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "omerta_logger_bullet_factories", force: :cascade do |t|
    t.integer "ext_bullet_factory_id", limit: 2
    t.integer "version_id"
    t.integer "user_id"
    t.integer "family_id"
    t.integer "city",                  limit: 1
    t.integer "price",                 limit: 2
    t.integer "bullets",               limit: 3
  end

  add_index "omerta_logger_bullet_factories", ["family_id"], name: "index_omerta_logger_bullet_factories_on_family_id"
  add_index "omerta_logger_bullet_factories", ["user_id"], name: "index_omerta_logger_bullet_factories_on_user_id"
  add_index "omerta_logger_bullet_factories", ["version_id"], name: "index_omerta_logger_bullet_factories_on_version_id"

  create_table "omerta_logger_bullet_factory_bullet_histories", force: :cascade do |t|
    t.integer  "bullet_factory_id"
    t.datetime "date"
    t.integer  "bullets",           limit: 3
  end

  add_index "omerta_logger_bullet_factory_bullet_histories", ["bullet_factory_id"], name: "index_bullet_bullet_factory_id"

  create_table "omerta_logger_bullet_factory_owner_histories", force: :cascade do |t|
    t.integer  "bullet_factory_id"
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "family_id"
  end

  add_index "omerta_logger_bullet_factory_owner_histories", ["bullet_factory_id"], name: "index_owner_bullet_factory_id"

  create_table "omerta_logger_bullet_factory_price_histories", force: :cascade do |t|
    t.integer  "bullet_factory_id"
    t.datetime "date"
    t.integer  "price",             limit: 2
  end

  add_index "omerta_logger_bullet_factory_price_histories", ["bullet_factory_id"], name: "index_price_bullet_factory_id"

  create_table "omerta_logger_business_object_bankruptcy_histories", force: :cascade do |t|
    t.integer  "business_object_id"
    t.datetime "date"
    t.boolean  "bankrupt"
  end

  add_index "omerta_logger_business_object_bankruptcy_histories", ["business_object_id"], name: "index_bankruptcy_business_object_id"

  create_table "omerta_logger_business_object_owner_histories", force: :cascade do |t|
    t.integer  "business_object_id"
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "family_id"
  end

  add_index "omerta_logger_business_object_owner_histories", ["business_object_id"], name: "index_owner_business_object_id"

  create_table "omerta_logger_business_object_profit_histories", force: :cascade do |t|
    t.integer  "business_object_id"
    t.datetime "date"
    t.integer  "profit"
  end

  add_index "omerta_logger_business_object_profit_histories", ["business_object_id"], name: "index_profit_business_object_id"

  create_table "omerta_logger_business_object_protection_histories", force: :cascade do |t|
    t.integer  "business_object_id"
    t.datetime "date"
    t.integer  "protection",         limit: 1
  end

  add_index "omerta_logger_business_object_protection_histories", ["business_object_id"], name: "index_protection_business_object_id"

  create_table "omerta_logger_business_objects", force: :cascade do |t|
    t.integer "ext_object_id", limit: 2
    t.integer "version_id"
    t.integer "user_id"
    t.integer "family_id"
    t.integer "object_type",   limit: 1
    t.integer "city",          limit: 1
    t.integer "profit"
    t.integer "protection",    limit: 1
    t.boolean "bankrupt"
  end

  add_index "omerta_logger_business_objects", ["family_id"], name: "index_omerta_logger_business_objects_on_family_id"
  add_index "omerta_logger_business_objects", ["user_id"], name: "index_omerta_logger_business_objects_on_user_id"
  add_index "omerta_logger_business_objects", ["version_id"], name: "index_omerta_logger_business_objects_on_version_id"

  create_table "omerta_logger_casino_bankruptcy_histories", force: :cascade do |t|
    t.integer  "casino_id"
    t.datetime "date"
    t.boolean  "bankrupt"
  end

  add_index "omerta_logger_casino_bankruptcy_histories", ["casino_id"], name: "index_bankruptcy_casino_id"

  create_table "omerta_logger_casino_max_bet_histories", force: :cascade do |t|
    t.integer  "casino_id"
    t.datetime "date"
    t.integer  "max_bet"
  end

  add_index "omerta_logger_casino_max_bet_histories", ["casino_id"], name: "index_max_bet_casino_id"

  create_table "omerta_logger_casino_owner_histories", force: :cascade do |t|
    t.integer  "casino_id"
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "family_id"
  end

  add_index "omerta_logger_casino_owner_histories", ["casino_id"], name: "index_owner_casino_id"

  create_table "omerta_logger_casino_profit_histories", force: :cascade do |t|
    t.integer  "casino_id"
    t.datetime "date"
    t.integer  "profit"
  end

  add_index "omerta_logger_casino_profit_histories", ["casino_id"], name: "index_profit_casino_id"

  create_table "omerta_logger_casino_protection_histories", force: :cascade do |t|
    t.integer  "casino_id"
    t.datetime "date"
    t.integer  "protection", limit: 1
  end

  add_index "omerta_logger_casino_protection_histories", ["casino_id"], name: "index_protection_casino_id"

  create_table "omerta_logger_casinos", force: :cascade do |t|
    t.integer "ext_casino_id", limit: 2
    t.integer "version_id"
    t.integer "user_id"
    t.integer "family_id"
    t.integer "casino_type",   limit: 1
    t.integer "city",          limit: 1
    t.integer "profit"
    t.integer "max_bet"
    t.integer "protection",    limit: 1
    t.boolean "bankrupt"
  end

  add_index "omerta_logger_casinos", ["family_id"], name: "index_omerta_logger_casinos_on_family_id"
  add_index "omerta_logger_casinos", ["user_id"], name: "index_omerta_logger_casinos_on_user_id"
  add_index "omerta_logger_casinos", ["version_id"], name: "index_omerta_logger_casinos_on_version_id"

  create_table "omerta_logger_domains", force: :cascade do |t|
    t.string   "name"
    t.string   "api_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archive_url"
  end

  create_table "omerta_logger_families", force: :cascade do |t|
    t.integer  "ext_family_id"
    t.integer  "version_id"
    t.string   "name"
    t.integer  "worth"
    t.integer  "rank"
    t.integer  "user_count"
    t.integer  "hq"
    t.string   "color"
    t.integer  "bank"
    t.integer  "city"
    t.integer  "don_id"
    t.integer  "sotto_id"
    t.integer  "consig_id"
    t.datetime "first_seen"
    t.boolean  "alive"
    t.datetime "death_date"
    t.integer  "rip_topic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  add_index "omerta_logger_families", ["version_id"], name: "index_omerta_logger_families_on_version_id"

  create_table "omerta_logger_family_bank_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "bank"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_bank_histories", ["family_id"], name: "index_omerta_logger_family_bank_histories_on_family_id"

  create_table "omerta_logger_family_name_histories", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_name_histories", ["family_id"], name: "index_omerta_logger_family_name_histories_on_family_id"

  create_table "omerta_logger_family_position_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "position"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_position_histories", ["family_id"], name: "index_omerta_logger_family_position_histories_on_family_id"

  create_table "omerta_logger_family_rank_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "rank"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_rank_histories", ["family_id"], name: "index_omerta_logger_family_rank_histories_on_family_id"

  create_table "omerta_logger_family_user_count_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_count"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_user_count_histories", ["family_id"], name: "index_omerta_logger_family_user_count_histories_on_family_id"

  create_table "omerta_logger_family_worth_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "worth"
    t.integer  "family_id"
  end

  add_index "omerta_logger_family_worth_histories", ["family_id"], name: "index_omerta_logger_family_worth_histories_on_family_id"

  create_table "omerta_logger_game_statistics", force: :cascade do |t|
    t.datetime "date"
    t.integer  "version_id"
    t.integer  "users_total"
    t.integer  "users_alive"
    t.integer  "users_dead"
    t.integer  "lackeys_working"
    t.integer  "users_online_now"
    t.integer  "users_online_today"
    t.integer  "users_online_week"
    t.integer  "registrations_today"
    t.integer  "registrations_week"
    t.integer  "bullets",             limit: 8
    t.integer  "money_pocket",        limit: 8
    t.integer  "money_bank",          limit: 8
    t.integer  "money_familybank",    limit: 8
    t.integer  "honorpoints"
    t.integer  "car_attempts"
    t.integer  "crime_attempts"
    t.integer  "bustouts"
    t.integer  "cars"
  end

  add_index "omerta_logger_game_statistics", ["version_id"], name: "index_omerta_logger_game_statistics_on_version_id"

  create_table "omerta_logger_hitlists", force: :cascade do |t|
    t.integer  "ext_hitlist_id"
    t.integer  "version_id"
    t.datetime "date"
    t.integer  "amount"
    t.integer  "target_id"
    t.integer  "hitlister_id"
  end

  create_table "omerta_logger_user_family_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "date"
    t.integer  "family_role"
  end

  add_index "omerta_logger_user_family_histories", ["family_id"], name: "index_omerta_logger_user_family_histories_on_family_id"
  add_index "omerta_logger_user_family_histories", ["user_id"], name: "index_omerta_logger_user_family_histories_on_user_id"

  create_table "omerta_logger_user_name_histories", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "user_id"
  end

  add_index "omerta_logger_user_name_histories", ["user_id"], name: "index_omerta_logger_user_name_histories_on_user_id"

  create_table "omerta_logger_user_online_times", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "start"
    t.datetime "end"
  end

  add_index "omerta_logger_user_online_times", ["user_id"], name: "index_omerta_logger_user_online_times_on_user_id"

  create_table "omerta_logger_user_rank_histories", force: :cascade do |t|
    t.datetime "date"
    t.integer  "rank"
    t.integer  "user_id"
  end

  add_index "omerta_logger_user_rank_histories", ["user_id"], name: "index_omerta_logger_user_rank_histories_on_user_id"

  create_table "omerta_logger_user_revives", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_id"
  end

  add_index "omerta_logger_user_revives", ["user_id"], name: "index_omerta_logger_user_revives_on_user_id"

  create_table "omerta_logger_users", force: :cascade do |t|
    t.integer  "ext_user_id"
    t.integer  "version_id"
    t.string   "name"
    t.integer  "gender"
    t.integer  "rank"
    t.integer  "honor_points"
    t.integer  "level"
    t.boolean  "donor"
    t.datetime "first_seen"
    t.datetime "last_seen"
    t.integer  "family_id"
    t.integer  "family_role"
    t.boolean  "alive"
    t.boolean  "akill"
    t.datetime "death_date"
    t.string   "death_family"
    t.boolean  "died_without_family"
    t.integer  "rip_topic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "online_time_seconds", default: 0
  end

  add_index "omerta_logger_users", ["family_id"], name: "index_omerta_logger_users_on_family_id"
  add_index "omerta_logger_users", ["version_id"], name: "index_omerta_logger_users_on_version_id"

  create_table "omerta_logger_version_updates", force: :cascade do |t|
    t.integer  "version_id"
    t.datetime "generated"
    t.float    "duration"
  end

  add_index "omerta_logger_version_updates", ["version_id"], name: "index_omerta_logger_version_updates_on_version_id"

  create_table "omerta_logger_versions", force: :cascade do |t|
    t.string   "version"
    t.integer  "domain_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "omerta_logger_versions", ["domain_id"], name: "index_omerta_logger_versions_on_domain_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "approved",               default: false, null: false
  end

  add_index "users", ["approved"], name: "index_users_on_approved"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
