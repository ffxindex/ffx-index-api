class Api::V1::ItemsController < ApplicationController

  before_action :cache_page, only: [:items_with_monsters, "index"]

  def index
    @items = Item.all
    render 'api/v1/items/index.json'
  end

  def show
    @item = Item.preload(preload_hash).find_by_id_or_slug(params[:id])
    # if @item
      render 'api/v1/items/show.json'
    # else
    #   render plain: 404
    # end
  end

  def items_with_monsters
    @items = Item.preload(preload_hash).all
    render 'api/v1/items/items_with_monsters.json'
  end

  private

  def preload_hash
    {
      kill_drops: { monster: :location },
      steal_drops: { monster: :location },
      bribe_drops: { monster: :location }
    }
  end
end
