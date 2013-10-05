class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find_by_id(params[:id])
  end
end
