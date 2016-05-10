json.set! :response, response.status
json.set! :data do
  json.array! @abilities do |ability|
    json.ability_type ability.ability_type
    json.name ability.name
    json.effect ability.effect

    json.api_details do
      json.id ability.id
      json.slug ability.slug
    end

    json.item do
      json.name ability.item.name
      json.amount ability.item_amount

      json.api_details do
        json.id ability.item.id
        json.slug ability.item.slug
      end
    end
  end
end
