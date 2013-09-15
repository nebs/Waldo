class CheckinsController < ApplicationController
  def show
  end

  def index
  end

  def create
    x = params[:x]
    y = params[:y]
    room_id = params[:room_id]

    Checkin.create!(x: x, y: y, room_id: room_id, user: current_user)
  end

  def new
  end
end
