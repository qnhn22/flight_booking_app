class FlightsController < ApplicationController
    def index
        if params[:flight]
            @flights = Flight.where(flight_params)
            @passenger_count = params[:passenger_count]
        else
            @flights = Flight.all
        end
        @airports = Airport.all.map { |ap| [ap.code, ap.id] }
        @dates = Flight.all.map { |f| [f.departure_time, f.departure_time] }.uniq
    end
  
    private

    def flight_params
        params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure_date)
    end
end