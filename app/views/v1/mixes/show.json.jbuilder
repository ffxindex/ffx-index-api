json.set! :response, response.status
json.set! :data do
  json.name @mix.name
  json.description @mix.description

  json.set! :combinations do
    json.array @mix.mix_items do |combo|
      json.item_one do
         json.name combo.item_one.name
         json.id combo.item_one.id
         json.slug combo.item_one.slug
       end
      json.item_two do
         json.name combo.item_two.name
         json.id combo.item_two.id
         json.slug combo.item_two.slug
       end
    end
  end

  json.api_details do
    json.id @mix.id
    json.slug @mix.slug
  end
end
