json.set! :response, response.status
json.set! :data do
  json.array! @items do |item|
    json.name item.name
    json.effect item.effect

    json.api_details do
      json.id item.id
      json.slug item.slug
    end
  end
end
