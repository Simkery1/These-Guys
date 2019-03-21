class Owner::BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :decline]

  def index
    @bookings = current_user.reservations
  end

  def accept
    @booking.status = "accepted"
    @booking.save
    redirect_to owner_bookings_path
  end

  def decline
    @booking.status = "declined"
    @booking.save
    redirect_to owner_bookings_path
  end

  private

  def set_booking
  @booking = Booking.find(params[:id])
  end
end
