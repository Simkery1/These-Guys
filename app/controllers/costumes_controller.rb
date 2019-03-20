class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

   def index
    # if params[:query].present?
    #   @costumes = Costume.where("title ILIKE ?", "%#{params[:query]}%")
    # else
      @costumes = Costume.all
    end
  end
