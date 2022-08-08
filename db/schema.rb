# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_06_134234) do
  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "password"
    t.string "email"
  end

  create_table "companyadmins", force: :cascade do |t|
    t.string "username"
    t.integer "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companydevices", force: :cascade do |t|
    t.string "devicename"
    t.string "device_type"
    t.string "os_type"
    t.string "service_tag"
    t.integer "companyemployee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companyemployee_id"], name: "index_companydevices_on_companyemployee_id"
  end

  create_table "companyemployees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "companydevice_id"
    t.integer "companyadmin_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "device_name"
    t.string "device_type"
    t.string "os_type"
    t.integer "service_tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_devices_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phonenumber"
    t.integer "device_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_id"
    t.index ["device_id"], name: "index_employees_on_device_id"
  end

  add_foreign_key "companydevices", "companyemployees"
  add_foreign_key "devices", "employees"
  add_foreign_key "employees", "devices"
end
