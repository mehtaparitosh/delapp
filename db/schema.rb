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

ActiveRecord::Schema.define(version: 20180314154744) do

  create_table "entries", force: :cascade do |t|
    t.float "_1"
    t.float "_2"
    t.float "_3"
    t.float "_4"
    t.float "_5"
    t.integer "_6"
    t.float "_7"
    t.float "_8"
    t.float "_9"
    t.float "_10"
    t.float "_11"
    t.float "_12"
    t.float "_13"
    t.float "_14"
    t.integer "_15"
    t.integer "_16"
    t.integer "_17"
    t.float "_18"
    t.float "_19"
    t.float "_20"
    t.float "_21"
    t.float "_22"
    t.integer "_23"
    t.integer "_24"
    t.integer "_25"
    t.integer "_26"
    t.integer "_27"
    t.integer "_28"
    t.integer "_29"
    t.integer "_30"
    t.integer "_31"
    t.integer "_32"
    t.float "_33"
    t.float "_34"
    t.float "_35"
    t.float "_36"
    t.float "_37"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.integer "month"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.boolean "is_first", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
