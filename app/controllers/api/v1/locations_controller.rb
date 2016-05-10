class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render 'api/v1/locations/index.json'
  end

  def show
    @location = Location.find_by_id_or_slug(params[:id])
    render 'api/v1/locations/show.json'
  end
end
