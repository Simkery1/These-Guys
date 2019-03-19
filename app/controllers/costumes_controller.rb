class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end
end
