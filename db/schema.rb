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

ActiveRecord::Schema.define(version: 20170423163124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: true do |t|
    t.string   "title"
    t.text     "text_block"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_1_file_name"
    t.string   "image_1_content_type"
    t.integer  "image_1_file_size"
    t.datetime "image_1_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_primary_file_name"
    t.string   "image_primary_content_type"
    t.integer  "image_primary_file_size"
    t.datetime "image_primary_updated_at"
    t.string   "image_secondary_file_name"
    t.string   "image_secondary_content_type"
    t.integer  "image_secondary_file_size"
    t.datetime "image_secondary_updated_at"
    t.string   "image_tertiary_file_name"
    t.string   "image_tertiary_content_type"
    t.integer  "image_tertiary_file_size"
    t.datetime "image_tertiary_updated_at"
  end

  add_index "blocks", ["project_id"], name: "index_blocks_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "project_type"
    t.text     "intro"
    t.string   "role"
    t.string   "client"
    t.datetime "publish_date"
  end

end
