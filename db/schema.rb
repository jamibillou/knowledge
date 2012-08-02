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

ActiveRecord::Schema.define(:version => 20120802085918) do

  create_table "constructs", :force => true do |t|
    t.string   "name"
    t.string   "organism"
    t.text     "protein_family"
    t.float    "size"
    t.float    "pi"
    t.integer  "nb_cystein"
    t.text     "sequence"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "expressions", :force => true do |t|
    t.integer  "project_id"
    t.string   "system"
    t.string   "vector_backbone"
    t.string   "gene"
    t.string   "tag"
    t.string   "compartment"
    t.string   "strain"
    t.string   "medium"
    t.string   "culture"
    t.string   "temperature"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "cleavage_site"
    t.string   "solubility"
    t.string   "method"
  end

  create_table "involvings", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "manager"
  end

  create_table "project_constructs", :force => true do |t|
    t.integer  "project_id"
    t.integer  "construct_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "company"
    t.string   "name"
    t.string   "contact"
    t.text     "contact_info"
    t.text     "lab_books"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "description"
  end

  create_table "projects_users", :force => true do |t|
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "fullname"
    t.string   "title"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
