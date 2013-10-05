class HomeController < ApplicationController
  def show
    @floorplans = Floorplan.all
    @users = User.all.select(&:active?)
  end
end
