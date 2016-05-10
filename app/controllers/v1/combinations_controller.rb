class V1::CombinationsController < ApplicationController
  def index
    # TODO: Make.... less terrible
    monster = Monster.all.map {|r| [r.name, r.id, r.slug, 'monster', "#{v1_one_monster_url(r.slug)}"]}
    item = Item.all.map {|r| [r.name, r.id, r.slug, 'item', "#{v1_one_item_url(r.slug)}"]}
    ability = Ability.all.map {|r| [r.name, r.id, r.slug, 'ability', "#{v1_one_ability_url(r.slug)}"]}
    location = Location.all.map {|r| [r.name, r.id, r.slug, 'location', "#{v1_one_location_url(r.slug)}"]}

    @results = monster + item + ability + location
    @results.sort!
  end
end
