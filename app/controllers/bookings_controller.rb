class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end
end
