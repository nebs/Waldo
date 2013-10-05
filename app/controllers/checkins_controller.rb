class CheckinsController < ApplicationController
  def show
  end

  def index
  end

  def create
    x = params[:x]
    y = params[:y]
    zone_id = params[:zone_id]

    Checkin.create!(x: x, y: y, zone_id: zone_id, user: current_user)
  end

  def new
  end
end
