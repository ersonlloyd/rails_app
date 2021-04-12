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

ActiveRecord::Schema.define(version: 2021_04_12_030417) do

  create_table "guests", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.string "expected_payout_amount"
    t.string "listing_security_price_accurate"
    t.string "host_currency"
    t.string "nights"
    t.string "number_of_guests"
    t.string "status_type"
    t.string "total_paid_amount_accurate"
    t.string "guests"
    t.string "adults"
    t.string "infants"
    t.string "currency"
    t.string "payout_price"
    t.string "security_price"
    t.string "total_price"
  end

end
