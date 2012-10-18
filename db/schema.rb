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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121018105146) do

  create_table "sources", :force => true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "title2"
    t.string   "website"
    t.string   "volume"
    t.string   "edition"
    t.string   "pub_place"
    t.string   "pub_house"
    t.string   "magazine_num"
    t.string   "pages"
    t.integer  "ref_type"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "pub_date"
    t.integer  "ref_day"
    t.integer  "pub_day"
    t.integer  "pub_month"
    t.integer  "ref_month"
    t.integer  "ref_year"
    t.integer  "pub_year"
    t.string   "ref_date"
  end

  add_index "sources", ["user_id"], :name => "index_sources_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
