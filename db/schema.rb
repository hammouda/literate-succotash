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

ActiveRecord::Schema.define(version: 20170822104328) do

  create_table "classes", force: :cascade do |t|
    t.string   "designation"
    t.integer  "level_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["level_id"], name: "index_classes_on_level_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "designation"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "designation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.string   "type"
    t.integer  "parent_id"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_messages_on_parent_id"
    t.index ["student_id"], name: "index_messages_on_student_id"
    t.index ["teacher_id"], name: "index_messages_on_teacher_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_parents_on_group_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "type"
    t.string   "session"
    t.date     "date_rep"
    t.time     "duration"
    t.integer  "message_id"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_reports_on_message_id"
    t.index ["student_id"], name: "index_reports_on_student_id"
    t.index ["teacher_id"], name: "index_reports_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "classe_id"
    t.integer  "parent_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classe_id"], name: "index_students_on_classe_id"
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["parent_id"], name: "index_students_on_parent_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_teachers_on_group_id"
  end

end
