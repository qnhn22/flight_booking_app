# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all

a1 = Airport.create(code: "JFK", name: "fljalfd", location: "NY")
a2 = Airport.create(code: "DSW", name: "fdsfdf", location: "DE")
a3 = Airport.create(code: "ZRG", name: "ffsfd", location: "BE")
a4 = Airport.create(code: "HRG", name: "hhrreg", location: "TT")

Flight.delete_all

Flight.create([{ departure_airport_id: Airport.where(code: "HRG").first.id,
                 arrival_airport_id: Airport.where(code: "ZRG").first.id,
                 departure_time: "2022-09-21 13:30",
                 duration: "13:00" },
               { departure_airport_id: Airport.where(code: "JFK").first.id,
                 arrival_airport_id: Airport.where(code: "DSW").first.id,
                 departure_time: "2023-03-16 7:45",
                 duration: "06:00" },
               { departure_airport_id: Airport.where(code: "DSW").first.id,
                 arrival_airport_id: Airport.where(code: "JFK").first.id,
                 departure_time: "2023-03-16 10:00",
                 duration: "06:00" },
               { departure_airport_id: Airport.where(code: "JFK").first.id,
                 arrival_airport_id: Airport.where(code: "HRG").first.id,
                 departure_time: "2023-03-16 3:15",
                 duration: "06:00" },
               { departure_airport_id: Airport.where(code: "HRG").first.id,
                 arrival_airport_id: Airport.where(code: "ZRG").first.id,
                 departure_time: "2023-03-16 8:30",
                 duration: "06:00" }])