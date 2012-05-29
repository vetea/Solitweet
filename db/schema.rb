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

ActiveRecord::Schema.define(:version => 20120528234052) do

  create_table "deputies", :force => true do |t|
    t.string    "firstname"
    t.string    "surname"
    t.string    "description"
    t.string    "photo_url"
    t.string    "twitter_username"
    t.string    "political_party"
    t.integer   "number_of_twitter_followers"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "proposals", :force => true do |t|
    t.string    "title"
    t.text      "content"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "photo_url"
    t.string    "twitter_message"
  end

  create_table "sent_messages", :force => true do |t|
    t.integer  "deputy_id"
    t.integer  "proposal_id"
    t.integer  "count",       :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sent_messages", ["deputy_id"], :name => "index_sent_messages_on_deputy_id"
  add_index "sent_messages", ["proposal_id"], :name => "index_sent_messages_on_proposal_id"

end
