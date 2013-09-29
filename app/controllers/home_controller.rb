class HomeController < ApplicationController
  def show
    @rooms = Room.all
    @users = User.all.select(&:active?)
  end
end
