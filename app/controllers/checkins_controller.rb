class CheckinsController < ApplicationController
  def create
    if request.xhr?
      x = params[:x]
      y = params[:y]
      zone_id = params[:zone_id]

      Checkin.create!(x: x, y: y, zone_id: zone_id, user: current_user)
    end

    render nothing: true
  end
end
