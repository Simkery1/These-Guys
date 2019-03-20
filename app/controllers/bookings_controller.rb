class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
  end

  private

  def set_cocktail
    @booking = Booking.find(params[:id])
  end
end
