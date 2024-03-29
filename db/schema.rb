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

ActiveRecord::Schema.define(:version => 20120608233750) do

  create_table "fixtures", :force => true do |t|
    t.date     "matchdate"
    t.string   "home_team"
    t.string   "away_team"
    t.integer  "home_score"
    t.integer  "away_score"
    t.string   "winner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scorelines", :force => true do |t|
    t.integer  "home_score"
    t.integer  "away_score"
    t.string   "winner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "selections", :force => true do |t|
    t.integer  "user_id"
    t.integer  "match1"
    t.integer  "match2"
    t.integer  "match3"
    t.integer  "match4"
    t.integer  "match5"
    t.integer  "match6"
    t.integer  "match7"
    t.integer  "match8"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
