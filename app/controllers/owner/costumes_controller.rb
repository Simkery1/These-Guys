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
    @costume = Costume.create(costume_params)
    @costume.save
    redirect_to owner_costumes_path
  end

end
