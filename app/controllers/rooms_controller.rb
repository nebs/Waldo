class RoomsController < ApplicationController
  def show
  end

  def index
    @rooms = Room.all
  end
end
