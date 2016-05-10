json.set! :response, response.status
json.set! :data do
  json.name @monster.name
  json.location @monster.location.name

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
