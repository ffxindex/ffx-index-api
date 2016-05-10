class Api::V1::AbilitiesController < ApplicationController
  def index
    @abilities = Ability.preload(:item).all
    render 'api/v1/abilities/index.json'
  end

  def show
    @ability = Ability.find_by_id_or_slug(params[:id])
    render 'api/v1/abilities/show.json'
  end
end
