class BookingsController < ApplicationController
  before_action :set_booking
  skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
