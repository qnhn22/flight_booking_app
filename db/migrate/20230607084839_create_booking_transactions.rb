class CreateBookingTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_transactions do |t|
      t.integer "passenger_id"
      t.integer "booking_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["booking_id"], name: "index_booking_transactions_on_booking_id"
      t.index ["passenger_id"], name: "index_booking_transactions_on_passenger_id"
    end
  end
end
