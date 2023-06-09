class BookingsController < ApplicationController
    before_action :delete_bookings_and_passengers, only: [:create]

    def show
        @booking = Booking.find(params[:id])
        @flight = @booking.flight
        @passengers = @booking.passengers
    end

    def new
        @flight = Flight.where(id: params[:flight_id]).first
        @booking = Booking.new
        @passenger_count = params[:passenger_count].to_i
        @passenger_count.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to booking_url(@booking)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end

    def delete_bookings_and_passengers
        Booking.delete_all
        Passenger.delete_all
        BookingTransaction.delete_all
    end
end
