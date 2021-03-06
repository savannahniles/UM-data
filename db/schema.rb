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

ActiveRecord::Schema.define(version: 20130924143250) do

  create_table "associations", force: true do |t|
    t.integer  "program_id"
    t.integer  "keyword_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "associations", ["keyword_id"], name: "index_associations_on_keyword_id"
  add_index "associations", ["program_id", "keyword_id"], name: "index_associations_on_program_id_and_keyword_id", unique: true
  add_index "associations", ["program_id"], name: "index_associations_on_program_id"

  create_table "keywords", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "keywords", ["name"], name: "index_keywords_on_name"

  create_table "programs", force: true do |t|
    t.string   "title"
    t.string   "tmsId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["tmsId", "title"], name: "index_programs_on_tmsId_and_title"
  add_index "programs", ["tmsId"], name: "index_programs_on_tmsId", unique: true

end
