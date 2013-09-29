class RoomsController < ApplicationController
  before_filter :must_be_logged_in

  def show
  end

  def index
    @rooms = Room.all
  end
end
