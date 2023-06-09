class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer "flight_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["flight_id"], name: "index_bookings_on_flight_id"
    end
  end
end
