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

ActiveRecord::Schema.define(version: 2019_04_19_153959) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.float "avgCost"
    t.string "category"
    t.date "releaseDate"
    t.text "description"
    t.string "productPhoto_file_name"
    t.string "productPhoto_content_type"
    t.integer "productPhoto_file_size"
    t.datetime "productPhoto_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "fullName"
    t.date "DOB"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "userPhoto_file_name"
    t.string "userPhoto_content_type"
    t.integer "userPhoto_file_size"
    t.datetime "userPhoto_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_profiles_on_users_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "author"
    t.integer "productID"
    t.integer "productRating"
    t.text "reviewContent"
    t.date "reviewDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "userid"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
