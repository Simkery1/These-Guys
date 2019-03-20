class BookingsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_booking, only: [:index]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  private

  def set_booking
    @booking = Booking.find(params[1])
  end
end
