class Api::V1::CombinationsController < ApplicationController
  def index
    # TODO: Make.... less terrible
    monster = Monster.all.map {|r| [r.name, r.id, r.slug, 'monster', "#{api_v1_one_monster_url(r.slug)}"]}
    item = Item.all.map {|r| [r.name, r.id, r.slug, 'item', "#{api_v1_one_item_url(r.slug)}"]}
    ability = Ability.all.map {|r| [r.name, r.id, r.slug, 'ability', "#{api_v1_one_ability_url(r.slug)}"]}
    location = Location.all.map {|r| [r.name, r.id, r.slug, 'location', "#{api_v1_one_location_url(r.slug)}"]}

    @results = monster + item + ability + location
    @results.sort!
    render 'api/v1/combinations/index.json' unless fresh_when @results
  end
end
