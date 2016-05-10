json.set! :response, response.status
json.set! :data do

  json.name @ability.name
  json.effect @ability.effect
  json.ability_type @ability.ability_type
  
  json.api_details do
    json.id @ability.id
    json.slug @ability.slug
  end

  json.item do
    json.name @ability.item.name
    json.item_amount @ability.item_amount

    json.api_details do
      json.id @ability.item.id
      json.slug @ability.item.slug
    end
  end
end
