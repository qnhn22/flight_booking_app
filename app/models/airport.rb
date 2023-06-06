class Airport < ApplicationRecord
    has_many :departuring_flights, foreign_key: "departure_airport_id", class_name: "Flight", dependent: :destroy
    has_many :arriving_flights, foreign_key: "arrive_airport_id", class_name: "Flight", dependent: :destroy
end
