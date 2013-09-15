class HomeController < ApplicationController
  def show
    @rooms = Room.all
    @users = User.all.select do |u|
      u.checkins.count > 0 && u.checkins.last.created_at > 1.days.ago
    end
  end
end
