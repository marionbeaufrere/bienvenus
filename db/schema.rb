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

ActiveRecord::Schema.define(version: 20180307181120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_translations", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["category_id"], name: "index_category_translations_on_category_id"
    t.index ["locale"], name: "index_category_translations_on_locale"
  end

  create_table "links", force: :cascade do |t|
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "task_id"
    t.index ["task_id"], name: "index_links_on_task_id"
  end

  create_table "subtask_translations", force: :cascade do |t|
    t.integer "subtask_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "description"
    t.index ["locale"], name: "index_subtask_translations_on_locale"
    t.index ["subtask_id"], name: "index_subtask_translations_on_subtask_id"
  end

  create_table "subtasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_subtasks_on_task_id"
  end

  create_table "task_translations", force: :cascade do |t|
    t.integer "task_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "description"
    t.index ["locale"], name: "index_task_translations_on_locale"
    t.index ["task_id"], name: "index_task_translations_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "next_occurrence"
    t.integer "periodicity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_tasks_on_category_id"
  end

  create_table "user_subtasks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "subtask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subtask_id"], name: "index_user_subtasks_on_subtask_id"
    t.index ["user_id"], name: "index_user_subtasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.string "language"
    t.string "user_type"
    t.string "photo"
    t.integer "access", default: 1
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "links", "tasks"
  add_foreign_key "subtasks", "tasks"
  add_foreign_key "tasks", "categories"
  add_foreign_key "user_subtasks", "subtasks"
  add_foreign_key "user_subtasks", "users"
end
