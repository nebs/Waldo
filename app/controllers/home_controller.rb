class HomeController < ApplicationController
  def show
    @areas = Area.all
    @users = User.all.select(&:active?)
  end
end
