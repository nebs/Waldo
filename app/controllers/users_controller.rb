class UsersController < ApplicationController
  before_filter :must_be_logged_in

  def index
    @users = User.all
  end
end
