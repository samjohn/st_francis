# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100526225558) do

  create_table "client_events", :force => true do |t|
    t.integer  "client_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "client_events", ["client_id"], :name => "client_id_ix"
  add_index "client_events", ["event_id"], :name => "event_id_ix"

  create_table "client_programs", :force => true do |t|
    t.integer  "client_id"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "client_programs", ["client_id"], :name => "client_id_ix"
  add_index "client_programs", ["program_id"], :name => "program_id_ix"

  create_table "clients", :force => true do |t|
    t.string   "first_name", :limit => 100
    t.string   "last_name",  :limit => 100
    t.string   "city",       :limit => 100
    t.integer  "zip_code"
    t.integer  "phone_num"
    t.string   "email",      :limit => 50
    t.datetime "join_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address1",   :limit => 100
    t.string   "address2",   :limit => 100
    t.string   "state",      :limit => 20
  end

  create_table "events", :force => true do |t|
    t.string   "name",        :limit => 100
    t.string   "location",    :limit => 100
    t.text     "description"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", :force => true do |t|
    t.string   "name",             :limit => 100
    t.text     "description"
    t.datetime "start_date"
    t.integer  "num_participants"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.integer  "access_level"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "volunteer_events", :force => true do |t|
    t.integer  "volunteer_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "volunteer_events", ["event_id"], :name => "event_id_ix"
  add_index "volunteer_events", ["volunteer_id"], :name => "volunteer_id_ix"

  create_table "volunteer_programs", :force => true do |t|
    t.integer  "volunteer_id"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "volunteer_programs", ["program_id"], :name => "program_id_ix"
  add_index "volunteer_programs", ["volunteer_id"], :name => "volunteer_id_ix"

  create_table "volunteers", :force => true do |t|
    t.string   "first_name", :limit => 100
    t.string   "last_name",  :limit => 100
    t.integer  "phone_num"
    t.string   "email",      :limit => 50
    t.datetime "join_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
