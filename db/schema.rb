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

ActiveRecord::Schema.define(:version => 20130417050322) do

  create_table "auth_keys", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "actived",    :default => false
  end

  create_table "basic_messages", :force => true do |t|
    t.string   "to_user"
    t.string   "from_user"
    t.datetime "create_time"
    t.string   "message_type"
    t.string   "content"
    t.integer  "message_id",   :limit => 8
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "pic_url"
  end

  create_table "book_instances", :force => true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.boolean  "public",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "isbn"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "borrow_records", :force => true do |t|
    t.date     "borrow_date"
    t.date     "return_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "book_instance_id"
    t.integer  "user_id"
  end

  create_table "user_to_books", :force => true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "avatar"
    t.string   "location"
    t.string   "preferred_name"
  end

end
