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

ActiveRecord::Schema.define(:version => 4) do

  create_table "c_menus", :force => true do |t|
    t.string   "speed",       :default => "normal"
    t.string   "delay",       :default => "800"
    t.string   "animation",   :default => "height"
    t.string   "dropShadows", :default => "true"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "f_menus", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "s_menus", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "f_menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t_menus", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "s_menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
