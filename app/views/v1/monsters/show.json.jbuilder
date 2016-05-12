json.set! :response, response.status
json.set! :data do
  json.name @monster.name
  json.location @monster.location.name

  json.stats do
    json.health @monster.health
    json.overkill @monster.overkill
    json.strength @monster.strength
    json.defense @monster.defense
    json.magic @monster.magic
    json.magic_defense @monster.magic_defense
    json.mp @monster.mp
    json.agility @monster.agility
    json.luck @monster.luck
    json.ap @monster.ap
    json.evasion @monster.evasion
    json.accuracy @monster.accuracy
  end

  json.elements do
    json.water @monster.element.water
    json.thunder @monster.element.thunder
    json.fire @monster.element.fire
    json.ice @monster.element.ice
  end

  json.drop_abilities do
    json.set! :weapons do
      json.array! @monster.monster_drop_abilities.where(ability_type: 'weapon') do |weap|
        json.ability weap.ability.name
        json.api_details do
          json.id weap.ability.id
          json.slug weap.ability.slug
        end
      end
    end

    json.set! :armours do
      json.array! @monster.monster_drop_abilities.where(ability_type: 'armour') do |arm|
        json.ability arm.ability.name
        json.api_details do
          json.id arm.ability.id
          json.slug arm.ability.slug
        end
      end
    end
  end

  json.gil @monster.gil
  json.boss @monster.boss
  json.notes @monster.notes
  json.skills @monster.skills

  json.api_details do
    json.monster do
      json.id @monster.id
      json.slug @monster.slug
    end

    json.location do
      json.id @monster.location.id
      json.slug @monster.location.slug
    end
  end

  if @monster.bribe_drop
    json.bribe_drop do
      json.name @monster.bribe_drop.item.name
      json.amount @monster.bribe_drop.amount
      json.cost @monster.bribe_drop.cost

      json.api_details do
        json.id @monster.bribe_drop.item.id
        json.slug @monster.bribe_drop.item.slug
      end
    end
  else
    json.bribe_drop nil
  end

  if @monster.kill_drops
    json.set! :kill_drops do
      json.array! @monster.kill_drops do |kill_drop|
        json.name kill_drop.item.name
        json.amount kill_drop.amount
        json.rare kill_drop.rare

        json.api_details do
          json.id kill_drop.item.id
          json.slug kill_drop.item.slug
        end
      end
    end
  else
    json.kill_drops nil
  end

  if @monster.steal_drops
    json.set! :steal_drops do
      json.array! @monster.steal_drops do |steal_drop|
        json.name steal_drop.item.name
        json.amount steal_drop.amount
        json.rare steal_drop.rare

        json.api_details do
          json.id steal_drop.item.id
          json.slug steal_drop.item.slug
        end
      end
    end
  else
    json.steal_drops nil
  end
end
