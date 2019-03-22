class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # if params[:query].present?
    #   @costumes = Costume.where("title ILIKE ?", "%#{params[:query]}%")
    # else
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def new
    @costume = Costume.new
    redirect_to profile_path.bookings
  end

  def create
    @costume = Costume.create(costume_params)
  end

end
