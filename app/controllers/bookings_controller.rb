class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def new

    @booking = Booking.new
    redirect_to booking_path
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @costume.price_per_day
    @booking.locataire = current_user
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :costume_id)
  end
end
