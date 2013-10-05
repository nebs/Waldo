class ZonesController < ApplicationController
  before_filter :must_be_logged_in

  def index
    @zones = Zone.all
  end
end
