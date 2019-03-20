class CostumesController < ApplicationController
skip_before_action :authenticate_user!, only: :show

  def show
    @costume = Costume.find(params[:id])
  end

end
