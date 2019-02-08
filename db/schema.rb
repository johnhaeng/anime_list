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

ActiveRecord::Schema.define(version: 2019_02_08_195544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime_publishers", force: :cascade do |t|
    t.integer "anime_id"
    t.integer "publisher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anime_studios", force: :cascade do |t|
    t.integer "anime_id"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.integer "episodes"
    t.integer "seasons"
    t.integer "episode_duration"
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studio_directors", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "director_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studio_voice_actors", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "voice_actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voice_actors", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "picture_url"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
