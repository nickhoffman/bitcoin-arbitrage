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

ActiveRecord::Schema.define(version: 20140115014125) do

  create_table "data_sets", force: true do |t|
    t.integer  "cavirtex_cad_buy_cents"
    t.integer  "cavirtex_cad_sell_cents"
    t.integer  "cavirtex_usd_buy_cents"
    t.integer  "cavirtex_usd_sell_cents"
    t.integer  "mtgox_buy_cents"
    t.integer  "mtgox_sell_cents"
    t.integer  "coinbase_buy_cents"
    t.integer  "coinbase_sell_cents"
    t.integer  "bitstamp_buy_cents"
    t.integer  "bitstamp_sell_cents"
    t.integer  "btce_buy_cents"
    t.integer  "btce_sell_cents"
    t.integer  "campbx_buy_cents"
    t.integer  "campbx_sell_cents"
    t.integer  "cad_to_usd_rate_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                           null: false
    t.string   "crypted_password",                                null: false
    t.string   "salt",                                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "phone"
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.boolean  "notify",                          default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
