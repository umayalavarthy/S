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

ActiveRecord::Schema.define(:version => 20131123075201) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exams", :force => true do |t|
    t.string   "name"
    t.string   "exam_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "course_id"
    t.integer  "branch_id"
    t.integer  "duration"
  end

  create_table "exams_questions", :force => true do |t|
    t.integer  "exam_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "notifications", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "day_to_day"
    t.string   "link1"
    t.string   "link2"
  end

  create_table "questions", :force => true do |t|
    t.text     "question"
    t.string   "correct_answer"
    t.string   "incorrect_answer_1"
    t.string   "incorrect_answer_2"
    t.string   "incorrect_answer_3"
    t.integer  "exam_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "qavatar"
  end

  create_table "selections", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.string   "system_code"
    t.integer  "position_value"
    t.boolean  "is_default"
    t.boolean  "is_system"
    t.datetime "archived_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.integer  "branch_id"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testresults", :force => true do |t|
    t.integer  "score"
    t.integer  "exam_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "user_type"
    t.string   "name"
    t.string   "college"
    t.string   "phone"
    t.string   "pursuing"
    t.string   "gate_rank"
    t.string   "ies_rank"
    t.text     "address"
    t.boolean  "gender"
    t.date     "born"
    t.integer  "course_id"
    t.integer  "branch_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
