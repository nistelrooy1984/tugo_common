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

ActiveRecord::Schema.define(version: 2021_07_05_214100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", id: { comment: "ID" }, comment: "Departments", force: :cascade do |t|
    t.string "department_name", null: false, comment: "Department Name"
    t.bigint "parent_department_id", comment: "Parent Department ID"
    t.string "description", comment: "Description"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "master_countries", id: { comment: "ID" }, comment: "Country", force: :cascade do |t|
    t.string "name", null: false, comment: "Name"
    t.bigint "code", null: false, comment: "Code"
    t.string "code_name", null: false, comment: "Code Name"
    t.bigint "phone_code", null: false, comment: "Phone Code"
    t.integer "order", null: false, comment: "Order"
    t.boolean "is_usable", null: false, comment: "Is Usable"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "master_districts", id: { comment: "ID" }, comment: "District", force: :cascade do |t|
    t.string "name", null: false, comment: "Name"
    t.bigint "code", null: false, comment: "Code"
    t.string "code_name", null: false, comment: "Code Name"
    t.string "division_type", null: false, comment: "Division Type"
    t.string "short_code_name", null: false, comment: "Short Code Name"
    t.integer "order", null: false, comment: "Order"
    t.boolean "is_usable", null: false, comment: "Is Usable"
    t.bigint "master_province_id", null: false, comment: "Province ID"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "master_provinces", id: { comment: "ID" }, comment: "Province", force: :cascade do |t|
    t.string "name", null: false, comment: "Name"
    t.bigint "code", null: false, comment: "Code"
    t.string "code_name", null: false, comment: "Code Name"
    t.string "division_type", null: false, comment: "Division Type"
    t.bigint "phone_code", null: false, comment: "Phone Code"
    t.integer "order", null: false, comment: "Order"
    t.boolean "is_usable", null: false, comment: "Is Usable"
    t.bigint "master_country_id", null: false, comment: "Country ID"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "master_wards", id: { comment: "ID" }, comment: "Ward", force: :cascade do |t|
    t.string "name", null: false, comment: "Name"
    t.bigint "code", null: false, comment: "Code"
    t.string "code_name", null: false, comment: "Code Name"
    t.string "division_type", null: false, comment: "Division Type"
    t.string "short_code_name", null: false, comment: "Short Code Name"
    t.integer "order", null: false, comment: "Order"
    t.boolean "is_usable", null: false, comment: "Is Usable"
    t.bigint "master_district_id", null: false, comment: "District ID"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "roles", id: { comment: "ID" }, comment: "Roles", force: :cascade do |t|
    t.string "role_id", null: false, comment: "Role ID"
    t.string "role_name", null: false, comment: "Role Name"
    t.string "parent_role", comment: "Parent Role"
    t.bigint "depth", null: false, comment: "Depth"
    t.string "description", comment: "Description"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "users", id: { comment: "ID" }, comment: "Users", force: :cascade do |t|
    t.string "user_name", null: false, comment: "User Name"
    t.string "encrypted_password", null: false, comment: "Password"
    t.string "first_name", comment: "First Name"
    t.string "last_name", null: false, comment: "Last Name"
    t.string "email", comment: "Email"
    t.string "phone", comment: "Phone"
    t.bigint "department_id", comment: "Department ID"
    t.bigint "role_id", null: false, comment: "Role ID"
    t.bigint "reports_to_id", comment: "Reports To ID"
    t.boolean "is_admin", comment: "Is Admin"
    t.bigint "modified_by_id", null: false, comment: "Modified By ID"
    t.string "description"
    t.bigint "deleted", comment: "Deleted"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end
end