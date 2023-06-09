class UpdateFlightModel < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :takeoff, :datetime
    add_column :flights, :departure_date, :string
    add_column :flights, :departure_time, :string
    add_column :flights, :arrival_date, :string
    change_column :flights, :duration, :string
  end
end
