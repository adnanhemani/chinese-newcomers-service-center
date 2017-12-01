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

ActiveRecord::Schema.define(version: 20171201022353) do

  create_table "form_bs", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "B_1"
    t.boolean  "B_2"
    t.boolean  "B_3"
    t.boolean  "B_4"
    t.boolean  "B_5"
    t.boolean  "B_6"
    t.boolean  "B_7"
    t.boolean  "B_8"
    t.boolean  "B_9"
    t.boolean  "B_10"
    t.boolean  "B_11"
    t.boolean  "B_12"
    t.boolean  "B_13"
    t.boolean  "B_14"
    t.boolean  "B_15"
    t.boolean  "B_16"
    t.boolean  "B_17"
    t.boolean  "B_18"
    t.boolean  "B_19"
    t.boolean  "B_20"
    t.boolean  "B_21"
    t.boolean  "B_22"
    t.boolean  "B_23"
    t.boolean  "B_24"
    t.boolean  "B_25"
    t.boolean  "B_26"
    t.boolean  "B_27"
    t.boolean  "B_28"
    t.boolean  "B_29"
    t.boolean  "B_30"
    t.boolean  "B_31"
    t.boolean  "B_32"
    t.boolean  "B_33"
    t.boolean  "B_34"
    t.boolean  "B_35"
    t.boolean  "B_36"
    t.boolean  "B_37"
    t.boolean  "B_38"
    t.boolean  "B_39"
    t.boolean  "B_40"
    t.boolean  "B_41"
    t.boolean  "B_42"
    t.boolean  "B_43"
    t.boolean  "B_44"
    t.boolean  "B_45"
    t.boolean  "B_46"
    t.boolean  "B_47"
    t.boolean  "B_48"
    t.boolean  "B_49"
    t.boolean  "B_50"
    t.boolean  "B_51"
    t.boolean  "B_52"
    t.boolean  "B_53"
    t.boolean  "B_54"
    t.boolean  "B_55"
    t.boolean  "B_56"
    t.boolean  "B_57"
    t.boolean  "B_58"
    t.boolean  "B_59"
    t.boolean  "B_60"
    t.boolean  "B_61"
    t.boolean  "B_62"
    t.boolean  "B_total"
  end

  add_index "form_bs", ["item_id"], name: "index_form_bs_on_item_id"

  create_table "form_ks", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "form_ks", ["item_id"], name: "index_form_ks_on_item_id"

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
