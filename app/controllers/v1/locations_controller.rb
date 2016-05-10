class V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id_or_slug(params[:id])
  end
end
