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

ActiveRecord::Schema.define(version: 20151220161817) do

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "feature_type"
    t.string   "unit"
    t.integer  "display_order"
    t.boolean  "use_unit"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "plan_features", force: :cascade do |t|
    t.string   "value"
    t.string   "display_value"
    t.integer  "plan_id"
    t.integer  "feature_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "stripe_id"
    t.string   "name"
    t.integer  "price_cents"
    t.string   "interval"
    t.integer  "interval_count"
    t.integer  "trial_period_days"
    t.text     "metadata_as_json"
    t.text     "statement_descriptor"
    t.boolean  "highlight"
    t.integer  "display_order"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "stripe_id"
    t.integer  "plan_id"
    t.string   "last_four"
    t.string   "card_type"
    t.integer  "current_price_cents"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
