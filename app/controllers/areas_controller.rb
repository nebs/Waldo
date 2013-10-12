class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find_by_id(params[:id])

    if request.xhr?
      render partial: 'areas/zones', locals: { zones: @area.zones }
    end
  end
end
