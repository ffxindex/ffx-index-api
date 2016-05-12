class V1::MixesController < ApplicationController
  def index
    @mixes = Mix.all
  end

  def show
    @mix = Mix.preload(preload_hash).find_by_id_or_slug(params[:id])
  end

  private

  def preload_hash
    {
      mix_items: [
        :item_one,
        :item_two
      ]
    }
  end
end
