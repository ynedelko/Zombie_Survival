class LocationsController < ApplicationController

  def index
    @user = current_user
    @locations =Location.all
  end

  def show
    @location =Location.find(params[:id])
  end

  def new
    @location = Location.new
  end
end
