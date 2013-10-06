class UsersController < ApplicationController
  before_filter :must_be_logged_in

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
    @checkins = @user.checkins.order('created_at DESC')
  end
end
