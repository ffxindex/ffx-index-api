class V1::AbilitiesController < ApplicationController
  def index
    @abilities = Ability.preload(:item).all
  end

  def show
    @ability = Ability.find_by_id_or_slug(params[:id])
  end
end
