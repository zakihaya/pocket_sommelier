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

ActiveRecord::Schema.define(:version => 20130713142234) do

  create_table "affiliate_links", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "publish_end_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "identifier"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.string   "include_words"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "features_items", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "feature_id"
  end

  create_table "item_images", :force => true do |t|
    t.integer  "item_id"
    t.string   "url"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "item_images", ["item_id"], :name => "index_item_images_on_item_id"

  create_table "items", :force => true do |t|
    t.string   "provider_type"
    t.string   "code"
    t.integer  "category_id",    :limit => 255
    t.string   "name"
    t.integer  "price"
    t.text     "caption"
    t.string   "url"
    t.boolean  "tax_exclude"
    t.integer  "review_count"
    t.integer  "review_average"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
