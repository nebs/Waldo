class HomeController < ApplicationController
  def show
    @rooms = Room.all
    @users = User.all.select { |u| u.checkins.count > 0 }
  end
end
