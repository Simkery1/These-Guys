class BookingsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_booking, only: [:index]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
