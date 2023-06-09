class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string "name"
      t.string "email"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
