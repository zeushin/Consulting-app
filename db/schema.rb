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

ActiveRecord::Schema.define(:version => 20120131080053) do

  create_table "books", :force => true do |t|
    t.string   "subject"
    t.string   "author"
    t.string   "publisher"
    t.string   "year"
    t.integer  "consultant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers", :force => true do |t|
    t.string   "since_date"
    t.string   "until_date"
    t.string   "substance"
    t.integer  "consultant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cautions", :force => true do |t|
    t.string   "content"
    t.integer  "consulting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultants", :force => true do |t|
    t.string   "name"
    t.string   "department"
    t.string   "job"
    t.string   "homepage"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "consultings", :force => true do |t|
    t.string   "topic"
    t.string   "movie"
    t.integer  "consultant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "detail",        :limit => 50000
  end

  create_table "news", :force => true do |t|
    t.string   "link_address"
    t.integer  "consulting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
