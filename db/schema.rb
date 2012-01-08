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

ActiveRecord::Schema.define(:version => 20120108170334) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ip_addresses", :force => true do |t|
    t.string   "address"
    t.string   "name"
    t.string   "purpose"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_contacts", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_subnets", :force => true do |t|
    t.integer  "site_id"
    t.integer  "subnet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subnets", :force => true do |t|
    t.string   "network"
    t.text     "description"
    t.string   "netmask"
    t.string   "gateway"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
