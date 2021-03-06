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

ActiveRecord::Schema.define(version: 20150511170023) do

  create_table "employees", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address"
    t.integer  "leaveAllowance"
    t.integer  "leaveTaken"
    t.decimal  "monthlySalary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",          default: false
  end

  create_table "request_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.date     "startDate"
    t.date     "endDate"
    t.string   "approved"
    t.integer  "employee_id"
    t.integer  "requestType_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["employee_id"], name: "index_requests_on_employee_id"
  add_index "requests", ["requestType_id"], name: "index_requests_on_requestType_id"

end
