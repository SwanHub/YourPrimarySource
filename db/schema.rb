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

ActiveRecord::Schema.define(version: 2019_08_23_024335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "source"
    t.string "author"
    t.date "publish_date"
    t.text "url"
    t.text "urlToImage"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_articles_on_candidate_id"
  end

  create_table "candidate_policies", force: :cascade do |t|
    t.bigint "candidate_id"
    t.bigint "policy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_candidate_policies_on_candidate_id"
    t.index ["policy_id"], name: "index_candidate_policies_on_policy_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "current_position"
    t.string "state"
    t.text "website"
    t.text "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.text "background"
    t.text "twitter"
    t.string "born"
    t.decimal "total_receipts", precision: 13, scale: 2
    t.decimal "total_disbursements", precision: 13, scale: 2
    t.decimal "cash_on_hand", precision: 13, scale: 2
  end

  create_table "comments", force: :cascade do |t|
    t.integer "poster_id"
    t.integer "commenter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "polls", force: :cascade do |t|
    t.string "source"
    t.date "date"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "value"
    t.index ["candidate_id"], name: "index_polls_on_candidate_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "policy_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["policy_id"], name: "index_posts_on_policy_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "articles", "candidates"
  add_foreign_key "candidate_policies", "candidates"
  add_foreign_key "candidate_policies", "policies"
  add_foreign_key "polls", "candidates"
  add_foreign_key "posts", "policies"
  add_foreign_key "posts", "users"
end
