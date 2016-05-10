class Api::V1::MonstersController < ApplicationController
  def index
    @monsters = Monster.preload(:location).all
    render 'api/v1/monsters/index.json' unless fresh_when @monsters
  end

  def show
    @monster = Monster.preload(preload_hash).find_by_id_or_slug(params[:id])
    render 'api/v1/monsters/show.json'
  end

  private

  def preload_hash
    {
      bribe_drop: :item,
      kill_drops: :item,
      steal_drops: :item
    }
  end
end
