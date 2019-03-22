class Owner::CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def costume_params
    params.require(:costume).permit(:photo, :name, :description, :price_per_day)
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.owner = current_user
    if @costume.save
      redirect_to profile_path
    else
      render :new
    end
  end

end
