class ZonesController < ApplicationController
  before_filter :must_be_logged_in

  def index
    @area = Area.find_by_id(params[:area_id])
  end

  def show
    @zone = Zone.find_by_id(params[:id])
    @checkins = @zone.checkins.order('created_at DESC')
  end
end
