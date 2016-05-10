json.set! :response, response.status
json.set! :data do
  json.array! @items do |item|
    json.name item.name
    json.effect item.effect

    json.api_details do
      json.id item.id
      json.slug item.slug
    end

    if item.bribe_drops.present?
      json.set! :bribe_drops do
        json.array! item.bribe_drops do |bribe_drop|
          json.amount bribe_drop.amount
          json.cost bribe_drop.cost
          json.location bribe_drop.monster.location.name
          json.name bribe_drop.monster.name

          json.api_details do
            json.monster do
              json.id bribe_drop.monster.id
              json.slug bribe_drop.monster.slug
            end

            json.location do
              json.id bribe_drop.monster.location.id
              json.slug bribe_drop.monster.location.slug
            end
          end
        end
      end
    else
      json.bribe_drops nil
    end
    if item.kill_drops.present?
      json.set! :kill_drops do
        json.array! item.kill_drops do |kill_drop|
          json.amount kill_drop.amount
          json.location kill_drop.monster.location.name
          json.name kill_drop.monster.name
          json.rare kill_drop.rare

          json.api_details do
            json.monster do
              json.id kill_drop.monster.id
              json.slug kill_drop.monster.slug
            end

            json.location do
              json.id kill_drop.monster.location.id
              json.slug kill_drop.monster.location.slug
            end
          end
        end
      end
    else
      json.kill_drops nil
    end

    if item.steal_drops.present?
      json.set! :steal_drops do
        json.array! item.steal_drops do |steal_drop|
          json.amount steal_drop.amount
          json.location steal_drop.monster.location.name
          json.name steal_drop.monster.name
          json.rare steal_drop.rare

          json.api_details do
            json.monster do
              json.id steal_drop.monster.id
              json.slug steal_drop.monster.slug
            end

            json.location do
              json.id steal_drop.monster.location.id
              json.slug steal_drop.monster.location.slug
            end
          end
        end
      end
    else
      json.steal_drop nil
    end
  end
end
